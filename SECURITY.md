# Güvenlik

## Açık bildirmek

Ajandam'da bir güvenlik açığı bulduysan lütfen ayrıntıları herkese açık bir Issue'ya yazma. GitHub'ın
[özel güvenlik bildirimi](https://github.com/tolgacodes-dev/ajandam/security/advisories/new) sayfasını kullan;
o sayfa açılmazsa ayrıntı vermeden bir Issue açıp ulaşmak istediğini yaz. Etkilenen sürüm, macOS sürümü ve adım adım
nasıl tekrarlanacağı işi hızlandırır.

## Desteklenen sürümler

Yalnızca en son sürüm güvenlik düzeltmesi alır. Ajandam yeni sürümü kendiliğinden indirip haber verdiği ve tek
tıkla kurulduğu için çoğu kullanıcı düzeltmeyi birkaç gün içinde alır.

## Ajandam'ın güvenlik modeli

- **Veriler:** Kayıtlar `~/Library/Application Support/Ajandam` altında, yalnızca senin kullanıcı hesabının okuyabildiği
  dosyalarda durur. Ajandam bir sunucuya kayıt göndermez.
- **Kilit:** PIN kilidi ve Touch ID Ajandam'ın arayüzünü korur; diskteki dosyaları şifrelemez. Mac'inin diskini
  FileVault ile şifrelemeni öneririz.
- **Güncellemeler:** Sürümler GitHub Actions'ta derlenip Ajandam imza sertifikasıyla imzalanır. Uygulama indirdiği
  güncellemenin SHA-256 özetini `latest.json` ile, imzasını uygulamaya gömülü sertifika parmak iziyle doğrular;
  tutmayan güncellemeyi kurmaz. Kurulan sürüm açılamazsa önceki sürüme dönülür.
- **Yapay zeka:**
  - Apple Intelligence ve yerel modeller (Ollama, LM Studio) Mac'in dışına veri göndermez.
  - ChatGPT ile giriş yaptıysan Asistan, soruların için gereken özetleri ve okuttuğun dökümlerin metnini OpenAI'ye
    gönderir; izin ayarı kapalıyken her seferinde sorar. ChatGPT oturumu yalnızca bu Mac'te durur: giriş jetonları
    macOS Anahtar Zinciri'nde, e-posta adresin yalnızca senin kullanıcı hesabının okuyabildiği bir dosyada (0600).
  - Claude ve diğer MCP uygulamaları yalnızca **Ayarlar › Yapay zeka › Yapay zeka uygulamaları bağlanabilir** açıksa
    bağlanabilir. Bağlantı, yalnızca senin kullanıcı hesabının erişebildiği bir Unix soketi (0600) üzerinden olur;
    Ajandam kilitliyken istek cevaplanmaz. Yapay zekanın önerdiği eklemeler ve değişiklikler senin onayını bekler.
- **Canlı fiyatlar:** Yalnızca herkese açık fiyat verisi indirilir; istekte kayıtlarına ait bir bilgi yoktur.
