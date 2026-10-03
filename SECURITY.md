# Güvenlik

## Açık bildirmek

Ajandam'da bir güvenlik açığı bulduysan lütfen ayrıntıları herkese açık bir Issue'ya yazma. GitHub'ın
[özel güvenlik bildirimi](https://github.com/tolgacodes-dev/ajandam/security/advisories/new) sayfasını kullan;
o sayfa açılmazsa ayrıntı vermeden bir Issue açıp ulaşmak istediğini yaz ya da ajandamuygulamasi@gmail.com adresine
e-posta gönder. Etkilenen sürüm, işletim sistemi (macOS ya da Windows sürümü) ve adım adım nasıl tekrarlanacağı işi
hızlandırır.

## Desteklenen sürümler

Yalnızca en son sürüm güvenlik düzeltmesi alır. Ajandam yeni sürümü arka planda indirip doğruladığı ve (kapatılmadıysa)
kendiliğinden kurduğu için çoğu kullanıcı düzeltmeyi birkaç gün içinde alır.

## Ajandam'ın güvenlik modeli

- **Veriler:** Kayıtlar Mac'te `~/Library/Application Support/Ajandam`, Windows'ta `%APPDATA%\Ajandam` altında,
  yalnızca senin kullanıcı hesabının okuyabildiği dosyalarda durur. Ajandam bir sunucuya kayıt göndermez; hesap,
  reklam, izleme kodu ya da kullanım istatistiği yoktur.
- **Kilit:** PIN kilidi, Touch ID ve Windows Hello Ajandam'ın arayüzünü korur; diskteki dosyaları şifrelemez. Mac'inin
  diskini FileVault, Windows'ta BitLocker (ya da Cihaz şifrelemesi) ile şifrelemeni öneririz. Ajandam kilitliyken
  yapay zeka uygulamalarının isteklerine cevap verilmez.
- **Güncellemeler:** Sürümler GitHub Actions'ta derlenip Ajandam'ın kendi imza anahtarıyla imzalanır.
  - Mac: uygulama indirdiği güncellemenin SHA-256 özetini `latest.json` ile, imzasını uygulamaya gömülü sertifika
    parmak iziyle doğrular. Terminal'deki kurulum betiği (`scripts/kur.sh`) de aynı iki denetimi yapar.
  - Windows: uygulama kurulum dosyasının SHA-256 özetini ve `latest-windows.json`'daki imzasını uygulamaya gömülü
    anahtarla doğrular.
  - Tutmayan güncelleme kurulmaz. Mac'te kurulan sürüm açılamazsa önceki sürüme dönülür. Her sürümün dosyalarının
    özetleri `SHA256SUMS` dosyasında yayımlanır.
- **Yapay zeka:**
  - Apple Intelligence ve yerel modeller (Ollama, LM Studio) bilgisayarının dışına veri göndermez.
  - ChatGPT ile giriş yaptıysan Asistan, soruların için gereken özetleri ve okuttuğun dökümlerin metnini OpenAI'ye
    gönderir; izin ayarı kapalıyken her seferinde sorar. ChatGPT oturumu yalnızca o bilgisayarda durur: Mac'te giriş
    jetonları macOS Anahtar Zinciri'nde, e-posta adresin yalnızca senin kullanıcı hesabının okuyabildiği bir dosyada
    (0600); Windows'ta jetonlar Windows'un veri koruma özelliğiyle (DPAPI) yalnızca senin Windows kullanıcının
    açabileceği biçimde şifrelenir. ChatGPT'den çıkış yapınca oturum OpenAI tarafında da kapatılır.
  - Claude ve diğer MCP uygulamaları yalnızca **Ayarlar › Yapay zeka › Yapay zeka uygulamaları bağlanabilir** açıksa
    bağlanabilir. Bağlantı Mac'te yalnızca senin kullanıcı hesabının erişebildiği bir Unix soketi (0600), Windows'ta
    uzak bağlantıları reddeden ve gizli bir anahtar isteyen bir adlandırılmış kanal (named pipe) üzerinden olur.
  - Adresle bağlanan uygulamalar için `http://127.0.0.1:<kapı>/mcp/<anahtar>` adresi yalnızca bu bilgisayardan ve
    gizli anahtarı bilen tarafından kullanılabilir; web sitelerinden (tarayıcıdan) ve başka bir ana bilgisayar adıyla
    gelen istekler reddedilir. Anahtar yalnızca senin kullanıcı hesabının okuyabildiği bir dosyada durur ve günlüklere
    yazılmaz.
  - Yapay zekanın önerdiği eklemeler ve değişiklikler senin onayını bekler.
- **Canlı fiyatlar ve kurlar:** Yalnızca herkese açık fiyat ve kur verisi indirilir; istekte kayıtlarına ait bir bilgi
  yoktur.
- **Geri bildirim:** Yalnızca sen gönderdiğinde, formda yazdıkların (ve eklediğin ekran görüntüsü) Google Apps Script
  üzerinden Ajandam'ın destek adresine e-postayla gider; kayıtların eklenmez.
