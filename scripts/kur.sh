#!/bin/bash
# Ajandam'ın son sürümünü GitHub'dan indirir, doğrular ve Uygulamalar klasörüne kurar.
#
#   curl -fsSL https://raw.githubusercontent.com/tolgacodes-dev/ajandam/main/scripts/kur.sh | bash
#
# İndirilen paketin SHA-256 özeti sürümün latest.json dosyasıyla, uygulamanın imzası da Ajandam imza sertifikasıyla
# denetlenir; tutmazsa kurulmaz. Kayıtların (~/Library/Application Support/Ajandam) olduğu gibi kalır.
# Tarayıcıyla indirilmediği için macOS'un "Yine de Aç" uyarısı çıkmaz.
#
# 3.8: Ajandam Apple'ın Developer ID'siyle imzalanıp onaylatıldıysa latest.json'da Apple ekip kimliği (macTakim) ve bu
# bilginin Ajandam anahtarıyla imzası (surumImza: sürüm, paketin SHA-256'sı ve adı, en düşük macOS, ekip) bulunur. İmza
# aşağıdaki sertifikalarla doğrulanırsa o ekibin Developer ID'li paketi (macZip) kurulur; doğrulanmazsa hiçbir şey
# kurulmaz. Ekip kimliği yoksa her şey eskisi gibi. Uygulamadaki güncelleyiciyle aynı kurallar (Guncelleyici.swift).
# Betiğin tamamı en sondaki "ana" çağrısıyla çalışır: indirme yarıda kesilirse hiçbir adım çalışmaz.
set -uo pipefail

DEPO="tolgacodes-dev/ajandam"
# kabul edilen imza sertifikaları (app/imza/*.cer, SHA-1); anahtar değişirken eskisi ve yenisi birlikte
PARMAKLAR="2575E5843426FBFCBA00BA0BE45B394554A107AA"
# 3.8: aynı sertifikalar (DER, base64; boşlukla ayrılır): sürüm bilgisinin imzası (surumImza) bunların anahtarıyla
# doğrulanır. Sertifika eklenince PARMAKLAR'la birlikte değişir (tests/yayin app/imza/*.cer ile karşılaştırır)
SERTIFIKALAR="MIIEWDCCAsCgAwIBAgIUSulKJTA069lb6jLEsk0v46hq8g4wDQYJKoZIhvcNAQELBQAwKTEVMBMGA1UEAwwMQWphbmRhbSBJbXphMRAwDgYDVQQKDAdBamFuZGFtMB4XDTI2MTAwMTA0MTczNFoXDTQ2MDkyNjA0MTczNFowKTEVMBMGA1UEAwwMQWphbmRhbSBJbXphMRAwDgYDVQQKDAdBamFuZGFtMIIBojANBgkqhkiG9w0BAQEFAAOCAY8AMIIBigKCAYEAxqtx2quboKbtltKxqvFM7d3hTf3fT//pTE6ZazoqlWGB0GxuhyH+ltrmCLehj35GJbY3X7YRf1zx/z4FpaZPgD/NqHpj84jqOxmkiinvVGj6w4CEw6HSRUq9qBxCX4p8+uFSXrfxal6YxHx+vghgMlUYB5P+wBzj4WA+mzdUMX6+LTy2Wq/qX9ktc51iaoMTAvRlL3Bi9UqYfLtJ72buKRMgtzKoez9a8Pja982k0CvGh4fMh+3dI3ds+x8dCEgy4buo1vNm0nInZhPA0OJN2qLc0gPdUTD8w94LPUFLpP341Zl6+OjO11ABoBMTKtCjpyqu09+NinuQhwQkFlzVm3AclZF6PZnhGm3qwVd22qBgsg+I0k5+MEhxharyG24bi+UVck3P3M6jZ7wX5PjX58lS1ObAiqlOK6s/jHl46PinIsq299oaZbd1RIu3+4M4zpKEiqEuJCL0A6t/4Xq1D3CYftngAt7q1pup7x7MZSHhJCobEKjuQDJ9VNzpRZk5AgMBAAGjeDB2MB0GA1UdDgQWBBTHfw70McqXdhN0dyDfOq5WipkDizAfBgNVHSMEGDAWgBTHfw70McqXdhN0dyDfOq5WipkDizAMBgNVHRMBAf8EAjAAMA4GA1UdDwEB/wQEAwIHgDAWBgNVHSUBAf8EDDAKBggrBgEFBQcDAzANBgkqhkiG9w0BAQsFAAOCAYEAfb3Q5zdS9dQ0zLDiORryimk/iDw2grzB1Gv44TGqcWiwqfe00dymZiY1NrpPay1+n3/juVg1qn654b2IDJsoiuSVfgAtEUrSe0utT4K9y42T9hR+eP5/qHe+AIOhtpWtNFU55VF9UFzJyF8b2vpYPlvbkCMy1zmuCXh9gE8xbjH4Jvw8qPpT5SIiW4J5kJUyN6ONun0fWjLLf/kPvLQT8fBT8soDhRFf4h+R7Fz3A5F+Qm/f69UB1dAFCcA7XcjAlPM0jaWn2aK9X4MEH3YQ8+1PNvRgzLbBxgxLqma/NVLcdN8Rb8iszQJE5/5QUJ+t14lIXT7N12saFRqL88H2nHFrT7EhJNbMJ+bKTKFaevaXpdOX3XN+fnOs3u0SHUSc/r30qTSdMByoxkmfxjR07pKM8H8V5VxvGSH2Xa9rOnv+P/VJJuKI7NbpUYpWFunvhCz3NxmQflDGKMDsYEg50U2tgo+GX0eH8uqSu4+PfcZQIcHKlfvs76YXlbn8wQkK"
# imzalanan metnin ilk satırı (scripts/latest_json.py › MESAJ_BASLIGI, Guncelleyici.swift › macMesajBasligi)
MESAJ_BASLIGI="ajandam-mac-guncelleme"

hata() { printf '\n  ✗ %s\n\n' "$1" >&2; exit 1; }
IZIN_IPUCU="macOS izin vermediyse: Sistem Ayarları › Gizlilik ve Güvenlik › Uygulama Yönetimi'nde Terminal'i aç ve yeniden dene."
adim() { printf '  %s\n' "$1"; }
alan() { # latest.json'dan ($BILGI) bir alan; yoksa (ya da null) boş
  plutil -extract "$1" raw -o - "$BILGI" 2>/dev/null \
    || osascript -l JavaScript -e "var v = JSON.parse(\$.NSString.stringWithContentsOfFileEncodingError('$BILGI', 4, null).js)['$1']; (v === undefined || v === null) ? '' : String(v)" 2>/dev/null
}

# imzalanan metin (scripts/latest_json.py › mesaj, Guncelleyici.swift › macMesaji ile aynı)
mesaj() { printf '%s\nsurum=%s\nsha256=%s\ndosya=%s\nenAzMacOS=%s\nmacTakim=%s\n' "$MESAJ_BASLIGI" "$1" "$2" "$3" "$4" "$5"; }

# $1: metin dosyası, $2: imza (base64). Ajandam sertifikalarından birinin anahtarıyla doğrulanırsa 0 (RSA PKCS#1 v1.5,
# SHA-256; macOS'taki openssl LibreSSL'dir, ikisi de anlar)
imza_dogru() {
  local metin="$1" imza="$2" g c
  [ -n "$imza" ] || return 1
  g="$(mktemp -d "${TMPDIR:-/tmp}/ajandam-imza.XXXXXX")" || return 1
  if ! printf '%s' "$imza" | openssl base64 -d -A > "$g/imza" 2>/dev/null || [ ! -s "$g/imza" ]; then rm -rf "$g"; return 1; fi
  for c in $SERTIFIKALAR; do
    printf '%s' "$c" | openssl base64 -d -A > "$g/sertifika.der" 2>/dev/null || continue
    openssl x509 -inform DER -in "$g/sertifika.der" -pubkey -noout > "$g/acik.pem" 2>/dev/null || continue
    if openssl dgst -sha256 -verify "$g/acik.pem" -signature "$g/imza" "$metin" >/dev/null 2>&1; then rm -rf "$g"; return 0; fi
  done
  rm -rf "$g"
  return 1
}

# Developer ID Application sertifikası ve ekip (Guncelleyici.swift › developerIdKosulu ile aynı)
developer_id() {
  printf 'anchor apple generic and certificate 1[field.1.2.840.113635.100.6.2.6] exists and certificate leaf[field.1.2.840.113635.100.6.1.13] exists and certificate leaf[subject.OU] = "%s"' "$1"
}

# kabul edilen imzalar: Ajandam sertifikaları; $1 (ekip kimliği) verilirse o ekibin Developer ID'si de
# (Guncelleyici.swift › gereksinimMetni; ekipsiz metin 3.8'den önceki kur.sh'ninkiyle aynı)
gereksinim() {
  local g="" p
  for p in $PARMAKLAR; do g="${g:+$g or }certificate leaf = H\"$p\""; done
  if [ -n "${1:-}" ]; then g="${g:+$g or }($(developer_id "$1"))"; fi
  printf 'identifier "app.ajandam.mac" and (%s)' "$g"
}

# latest.json'dan ($BILGI) kurulacak paket: SURUM ZIP OZET ENAZ GEREK. macTakim yoksa bugünkü gibi zip, sha256 ve Ajandam
# sertifikaları. Varsa paket macZip / macSha256'dan alınır ve yalnızca sürüm bilgisinin imzası doğrulanırsa (alanlar
# beklenen karakterlerden, adres bu sürümün indirme yerinde); değilse 1 döner, hiçbir şey kurulmaz.
sec() {
  local B="ABCDEFGHIJKLMNOPQRSTUVWXYZ" K="abcdefghijklmnopqrstuvwxyz" R="0123456789" dosya imza re
  SURUM="$(alan surum)"; ENAZ="$(alan enAzMacOS)"; TAKIM="$(alan macTakim)"
  if [ -z "$TAKIM" ]; then
    ZIP="$(alan zip)"; OZET="$(alan sha256)"; GEREK="$(gereksinim "")"
    return 0
  fi
  ZIP="$(alan macZip)"; OZET="$(alan macSha256)"; imza="$(alan surumImza)"; dosya="${ZIP##*/}"
  re="^[$B$R]{10}\$"; [[ "$TAKIM" =~ $re ]] || return 1
  re="^[$R]{1,4}\\.[$R]{1,4}\\.[$R]{1,6}\$"; [[ "$SURUM" =~ $re ]] || return 1
  re="^[${R}abcdef]{64}\$"; [[ "$OZET" =~ $re ]] || return 1
  re="^[$B$K$R._-]{1,196}\\.zip\$"; [[ "$dosya" =~ $re ]] || return 1
  re="^[$R]{1,3}(\\.[$R]{1,3}){0,2}\$"; [[ "$ENAZ" =~ $re ]] || return 1
  [ "$ZIP" = "https://github.com/$DEPO/releases/download/v$SURUM/$dosya" ] || return 1
  mesaj "$SURUM" "$OZET" "$dosya" "$ENAZ" "$TAKIM" > "$IS/mesaj.txt" || return 1
  imza_dogru "$IS/mesaj.txt" "$imza" || return 1
  GEREK="$(gereksinim "$TAKIM")"
}

ana() {
  [ "$(uname -s)" = "Darwin" ] || hata "Ajandam yalnızca macOS'ta çalışır."
  IS="$(mktemp -d "${TMPDIR:-/tmp}/ajandam-kur.XXXXXX")" || hata "Geçici klasör oluşturulamadı."
  trap 'rm -rf "$IS"' EXIT
  BILGI="$IS/latest.json"

  printf '\n  Ajandam kuruluyor…\n\n'
  adim "1/5 Son sürüm denetleniyor"
  curl -fsSL --retry 3 "https://github.com/$DEPO/releases/latest/download/latest.json" -o "$BILGI" \
    || hata "Sürüm bilgisi alınamadı. İnternet bağlantını denetle."
  sec || hata "Sürüm bilgisinin imzası doğrulanamadı; kurulmadı."
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
}

# denemeler (tests/yayin, yayinla.yml) yalnızca işlevleri yükler: AJANDAM_KUR_KAYNAK=1 . kur.sh
[ -n "${AJANDAM_KUR_KAYNAK:-}" ] || ana
