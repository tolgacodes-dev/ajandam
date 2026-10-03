#!/bin/bash
# Ajandam'ın son sürümünü GitHub'dan indirir, doğrular ve Uygulamalar klasörüne kurar.
#
#   curl -fsSL https://raw.githubusercontent.com/tolgacodes-dev/ajandam/main/scripts/kur.sh | bash
#
# İndirilen paketin SHA-256 özeti sürümün latest.json dosyasıyla, uygulamanın imzası da Ajandam imza sertifikasıyla
# denetlenir; tutmazsa kurulmaz. Kayıtların (~/Library/Application Support/Ajandam) olduğu gibi kalır.
# Tarayıcıyla indirilmediği için macOS'un "Yine de Aç" uyarısı çıkmaz.
set -uo pipefail

DEPO="tolgacodes-dev/ajandam"
# kabul edilen imza sertifikaları (app/imza/*.cer, SHA-1); anahtar değişirken eskisi ve yenisi birlikte
PARMAKLAR="2575E5843426FBFCBA00BA0BE45B394554A107AA"
GEREK=""
for P in $PARMAKLAR; do GEREK="${GEREK:+$GEREK or }certificate leaf = H\"$P\""; done
GEREK="identifier \"app.ajandam.mac\" and ($GEREK)"

hata() { printf '\n  ✗ %s\n\n' "$1" >&2; exit 1; }
IZIN_IPUCU="macOS izin vermediyse: Sistem Ayarları › Gizlilik ve Güvenlik › Uygulama Yönetimi'nde Terminal'i aç ve yeniden dene."
adim() { printf '  %s\n' "$1"; }
alan() { # latest.json içinden bir alan
  plutil -extract "$1" raw -o - "$IS/latest.json" 2>/dev/null \
    || osascript -l JavaScript -e "JSON.parse(\$.NSString.stringWithContentsOfFileEncodingError('$IS/latest.json', 4, null).js)['$1']" 2>/dev/null
}

[ "$(uname -s)" = "Darwin" ] || hata "Ajandam yalnızca macOS'ta çalışır."
IS="$(mktemp -d "${TMPDIR:-/tmp}/ajandam-kur.XXXXXX")" || hata "Geçici klasör oluşturulamadı."
trap 'rm -rf "$IS"' EXIT

printf '\n  Ajandam kuruluyor…\n\n'
adim "1/5 Son sürüm denetleniyor"
curl -fsSL --retry 3 "https://github.com/$DEPO/releases/latest/download/latest.json" -o "$IS/latest.json" \
  || hata "Sürüm bilgisi alınamadı. İnternet bağlantını denetle."
SURUM="$(alan surum)"; ZIP="$(alan zip)"; OZET="$(alan sha256)"; ENAZ="$(alan enAzMacOS)"
[ -n "$SURUM" ] && [ -n "$ZIP" ] && [ -n "$OZET" ] || hata "Sürüm bilgisi okunamadı."
case "$ZIP" in https://github.com/"$DEPO"/releases/download/*) ;; *) hata "Beklenmeyen indirme adresi: $ZIP" ;; esac
MACOS="$(sw_vers -productVersion)"
if [ -n "$ENAZ" ] && [ "$(printf '%s\n%s\n' "$ENAZ" "$MACOS" | sort -V | head -n1)" != "$ENAZ" ]; then
  hata "Ajandam $SURUM macOS $ENAZ ya da sonrasını istiyor (bu Mac: $MACOS)."
fi

adim "2/5 Ajandam $SURUM indiriliyor"
curl -fL --retry 3 --progress-bar "$ZIP" -o "$IS/Ajandam.zip" || hata "İndirme yarıda kaldı; yeniden dene."

adim "3/5 Doğrulanıyor"
GERCEK="$(shasum -a 256 "$IS/Ajandam.zip" | cut -d' ' -f1)"
[ "$GERCEK" = "$(printf '%s' "$OZET" | tr 'A-F' 'a-f')" ] || hata "İndirilen dosyanın SHA-256 özeti tutmadı; kurulmadı."
# açmadan önce paketteki adlar (uygulamadaki güncelleyici gibi): mutlak yol ya da ".." yok, her şey Ajandam.app altında
ADLAR="$(zipinfo -1 "$IS/Ajandam.zip" 2>/dev/null)" || hata "Paket okunamadı."
[ -n "$ADLAR" ] || hata "Paket boş."
while IFS= read -r AD; do
  case "$AD" in
    /*|..|../*|*/../*|*/..) hata "Paket beklenen biçimde değil; kurulmadı." ;;
    Ajandam.app/*|Ajandam.app) ;;
    *) hata "Paket beklenen biçimde değil; kurulmadı." ;;
  esac
done <<<"$ADLAR"
ditto -x -k "$IS/Ajandam.zip" "$IS/x" || hata "Paket açılamadı."
[ -L "$IS/x/Ajandam.app" ] && hata "Paket beklenen biçimde değil; kurulmadı."
[ -d "$IS/x/Ajandam.app" ] || hata "Pakette Ajandam.app yok."
codesign --verify --deep --strict -R="$GEREK" "$IS/x/Ajandam.app" 2>/dev/null || hata "Uygulamanın imzası Ajandam'ın değil; kurulmadı."

adim "4/5 Uygulamalar klasörüne kuruluyor"
HEDEF="/Applications"
[ -w "$HEDEF" ] || { HEDEF="$HOME/Applications"; mkdir -p "$HEDEF" || hata "$HEDEF oluşturulamadı."; }
if pgrep -x Ajandam >/dev/null 2>&1; then
  osascript -e 'quit app "Ajandam"' >/dev/null 2>&1
  for _ in 1 2 3 4 5 6 7 8; do pgrep -x Ajandam >/dev/null 2>&1 || break; sleep 1; done
  pgrep -x Ajandam >/dev/null 2>&1 && { pkill -x Ajandam; sleep 1; }
fi
YEDEK="$HEDEF/.Ajandam-onceki.app"
rm -rf "$YEDEK"
[ -d "$HEDEF/Ajandam.app" ] && { mv "$HEDEF/Ajandam.app" "$YEDEK" || hata "Eski Ajandam taşınamadı. Ajandam'ı kapatıp yeniden dene. $IZIN_IPUCU"; }
if ! ditto "$IS/x/Ajandam.app" "$HEDEF/Ajandam.app"; then
  rm -rf "$HEDEF/Ajandam.app"
  [ -d "$YEDEK" ] && mv "$YEDEK" "$HEDEF/Ajandam.app"
  hata "Ajandam $HEDEF klasörüne kopyalanamadı. $IZIN_IPUCU"
fi
xattr -dr com.apple.quarantine "$HEDEF/Ajandam.app" 2>/dev/null
rm -rf "$YEDEK"

adim "5/5 Açılıyor"
open "$HEDEF/Ajandam.app"
printf '\n  ✓ Ajandam %s kuruldu: %s/Ajandam.app\n' "$SURUM" "$HEDEF"
printf '    Sonraki sürümler Ajandam'"'"'ın içinden, tek tıkla kurulur.\n\n'
