#!/bin/bash
# Bu depodaki kurulum betiğini ve imzalı Türkiye verisini denetler. Ağ yalnızca
# yayındaki latest.json'u kur.sh'nin kabul edip etmediğini denemek için gerekir.
set -uo pipefail

KOK="$(cd "$(dirname "$0")/.." && pwd)"
cd "$KOK"

AJANDAM_KUR_KAYNAK=1
# shellcheck disable=SC1091
. "$KOK/scripts/kur.sh"

beklenen() {
  local ad="$1" istenen="$2"
  shift 2
  "$@"
  local gelen=$?
  [ "$gelen" -eq "$istenen" ] || hata "$ad: beklenen $istenen, gelen $gelen"
}

echo "  kur.sh sözdizimi"
bash -n "$KOK/scripts/kur.sh" || hata "kur.sh sözdizimi bozuk"
bash -n "$KOK/scripts/dogrula.sh" || hata "dogrula.sh sözdizimi bozuk"

echo "  Türkiye verisinin biçimi"
python3 - "$KOK/veri/turkiye.json" << 'PY' || hata "turkiye.json beklenen biçimde değil"
import json, sys
d = json.load(open(sys.argv[1], encoding="utf-8"))
for k in ("bicim", "surum", "tarih", "tufe", "kart", "bayram", "asgariSinir", "besTavan"):
    if k not in d:
        sys.exit("eksik alan: " + k)
ay = d["tufe"]["aylik"]
yil = d["tufe"]["yillik"]
if not isinstance(ay, dict) or not ay:
    sys.exit("tufe.aylik bos")
for year, months in ay.items():
    if not (1 <= len(months) <= 12):
        sys.exit("%s ay sayisi %s" % (year, len(months)))
    for m in months:
        if isinstance(m, bool) or not isinstance(m, (int, float)):
            sys.exit("%s ay sayi degil" % year)
for year, months in yil.items():
    if year not in ay:
        sys.exit("yillik yili aylikta yok: " + year)
    if len(months) != len(ay[year]):
        sys.exit("%s yillik ve aylik uzunlugu farkli" % year)
for key in d["tufe"]["ort12"]:
    if len(key) != 7 or key[4] != "-":
        sys.exit("ort12 anahtari: " + key)
if len(d["kart"]["akdi"]) != 3 or len(d["kart"]["gecikme"]) != 3:
    sys.exit("kart kademesi 3 degil")
PY

echo "  imza sertifikasının parmak izi"
IS="$(mktemp -d "${TMPDIR:-/tmp}/ajandam-dogrula.XXXXXX")"
trap 'rm -rf "$IS"' EXIT
printf '%s' "$SERTIFIKALAR" | openssl base64 -d -A > "$IS/sertifika.der" || hata "sertifika okunamadı"
FP="$(openssl x509 -inform DER -in "$IS/sertifika.der" -noout -fingerprint -sha1)"
FP="$(printf '%s' "$FP" | awk -F= '{print $2}' | tr -d ':' | tr 'a-f' 'A-F')"
[ "$FP" = "$PARMAKLAR" ] || hata "sertifikanın SHA-1 parmak izi PARMAKLAR ile tutmuyor ($FP)"

echo "  turkiye.json imzası"
IMZA="$(cat "$KOK/veri/turkiye.json.imza")"
imza_dogru "$KOK/veri/turkiye.json" "$IMZA" || hata "turkiye.json imzası tutmuyor"
cp "$KOK/veri/turkiye.json" "$IS/bozuk.json"
printf ' ' >> "$IS/bozuk.json"
if imza_dogru "$IS/bozuk.json" "$IMZA"; then hata "değiştirilmiş turkiye.json kabul edildi"; fi

echo "  macOS sürüm karşılaştırması"
beklenen "yeni mac" 0 mac_yeterli 15.6.1 12.0
beklenen "eşit" 0 mac_yeterli 12.0 12.0
beklenen "eksik bileşen" 0 mac_yeterli 12.0.0 12.0
beklenen "yalnızca ana sürüm" 0 mac_yeterli 12 12.0
beklenen "macos 26" 0 mac_yeterli 26.0 12.0
beklenen "eski mac" 1 mac_yeterli 11.7.10 12.0
beklenen "yama eksik" 1 mac_yeterli 12.6 12.6.1
beklenen "yama yeterli" 0 mac_yeterli 12.6.1 12.6
beklenen "on dokuzdan büyük" 0 mac_yeterli 12.10 12.9
beklenen "sayı değil" 2 mac_yeterli 12.0a 12.0

echo "  yayındaki latest.json"
BILGI="$IS/latest.json"
curl -fsSL --retry 3 --retry-delay 2 \
  "https://github.com/$DEPO/releases/latest/download/latest.json" -o "$BILGI" \
  || hata "latest.json indirilemedi"
alan() {
  python3 -c 'import json,sys
d=json.load(open(sys.argv[1], encoding="utf-8"))
v=d.get(sys.argv[2])
print("" if v is None else v)' "$BILGI" "$1"
}
sec || hata "yayındaki latest.json kur.sh tarafından kabul edilmedi"
case "$ZIP" in
  https://github.com/"$DEPO"/releases/download/v*/Ajandam-*.zip) ;;
  *) hata "beklenmeyen paket adresi: $ZIP" ;;
esac
[ -n "$OZET" ] && [ -n "$GEREK" ] || hata "sürüm seçimi eksik döndü"

echo "  bozuk sürüm bilgisi reddi"
python3 -c 'import json,sys
d=json.load(open(sys.argv[1], encoding="utf-8"))
d["macZip"]="https://evil.example/Ajandam-3.9.0.zip"
json.dump(d, open(sys.argv[2], "w"))' "$BILGI" "$IS/kotu-adres.json"
BILGI="$IS/kotu-adres.json"
if sec; then hata "yabancı indirme adresi kabul edildi"; fi

python3 -c 'import json,sys
d=json.load(open(sys.argv[1], encoding="utf-8"))
d["macSha256"]=d["macSha256"].upper()
json.dump(d, open(sys.argv[2], "w"))' "$IS/latest.json" "$IS/buyuk-harf.json"
BILGI="$IS/buyuk-harf.json"
if sec; then hata "büyük harfli SHA-256 kabul edildi"; fi

python3 -c 'import json,sys
d=json.load(open(sys.argv[1], encoding="utf-8"))
d["surumImza"]="AAAA"
json.dump(d, open(sys.argv[2], "w"))' "$IS/latest.json" "$IS/bozuk-imza.json"
BILGI="$IS/bozuk-imza.json"
if sec; then hata "bozuk sürüm imzası kabul edildi"; fi

printf '\n  ✓ doğrulama tamam\n'
