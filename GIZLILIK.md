# Ajandam gizlilik politikası

Son güncelleme: 8 Ekim 2026

Ajandam'ı tolgacodes-dev geliştirir. Bu politika Microsoft Store'dan ve kurulum dosyasıyla kurulan Windows uygulamasını
kapsar.

**Kayıtların bilgisayarında kalır.** Girdiğin işlemler, hesaplar, ödemeler, etkinlikler, notlar ve ekler yalnızca bu
bilgisayarda saklanır (Microsoft Store'dan kurulan Ajandam'da `%LOCALAPPDATA%\Packages\<Ajandam paketi>\LocalState`,
kurulum dosyasıyla kurulanda `%APPDATA%\Ajandam`). Ajandam hesap açtırmaz; reklam, izleme kodu, kullanım istatistiği ya da
geliştiriciye gönderilen çökme raporu içermez. Geliştirici kayıtlarını göremez. Microsoft Store'dan kurulan Ajandam'ı
kaldırmak ya da Windows Ayarları'nda sıfırlamak bu kayıtları da siler.

**Ajandam'ın internete çıktığı yerler.** Ajandam internetsiz de çalışır. Aşağıdakiler dışında hiçbir bağlantı kurmaz:

1. *Canlı fiyatlar ve kurlar* (Ayarlar › Genel › Canlı fiyatlar açıkken ve döviz, altın, kripto ya da dövizli bir
   hesabın varsa; en çok 10 dakikada bir): Binance (`api.binance.com`, `data-api.binance.vision`), Truncgil
   (`finans.truncgil.com`), TCMB (`www.tcmb.gov.tr`; dövizli bir işlemi geçmiş bir tarihle girerken o günün kuru da),
   jsDelivr'deki günlük kur listesi (`cdn.jsdelivr.net`, `fastly.jsdelivr.net`) ve ona ulaşılamazsa aynı listenin
   `currency-api.pages.dev`'deki kopyası. Bu isteklerde kayıtlarından hiçbir şey gönderilmez.
2. *Türkiye verileri* (TÜFE, kart faiz oranları, asgari ödeme sınırı, bayramlar, kısa duyurular; açılıştan kısa süre sonra
   ve 6 saatte bir, Ayarlar › Hakkında › Türkiye verileri açıkken): Ajandam'ın GitHub'daki indirme deposundan
   (`raw.githubusercontent.com`), Ajandam'ın imzasıyla doğrulanan bir veri dosyası. Kayıtlarından hiçbir şey gönderilmez.
   Microsoft Store'dan kurulan Ajandam'ı Microsoft Store günceller; kurulum dosyasıyla kurulan Ajandam yeni sürümü aynı
   depodan (`github.com`) denetler ve indirir.
3. *ChatGPT ile giriş* (isteğe bağlı): girişi tarayıcında OpenAI'nin sayfasında yaparsın (`auth.openai.com`). Asistan bir
   soruyu yanıtlamak, ekstre okumak ya da kategori önermek için gereken bilgiyi (sorun, hesap ve kategori adları, ilgili
   kayıtların tarihi, tutarı ve açıklaması, toplamlar; notlar yalnızca Ayarlar'dan izin verirsen) senin iznin olduğunda
   OpenAI'ye (`api.openai.com`) gönderir. IBAN, TC kimlik, kart ve telefon numaraları ve e-posta adresleri gönderilmeden
   gizlenir. İzin Ajandam kapanana kadar geçerlidir; Ayarlar › Yapay zeka'dan her zaman kapatabilir, oturumu
   kapatabilirsin. Oturum anahtarları bu bilgisayarda, Windows'un şifrelemesiyle (DPAPI) saklanır. OpenAI'ye gidenler
   OpenAI'nin koşullarına ve gizlilik politikasına tabidir.
4. *Yerel modeller* (Ollama, LM Studio): bu bilgisayarda çalışır (`127.0.0.1`); kayıtların bilgisayardan çıkmaz.
5. *Ajandam'a bağladığın yapay zeka uygulamaları* (Claude, ChatGPT, Cursor gibi; Ayarlar › Yapay zeka'da "bağlanabilir"
   açıksa): uygulama Ajandam'la bu bilgisayarda konuşur (MCP; isteğe bağlı yerel adres yalnızca `127.0.0.1`). O uygulamanın
   gördüğü kayıtları kendi hizmetine göndermesi o uygulamanın gizlilik politikasına tabidir. Ajandam bağlanan uygulamanın
   adını ve araç çağrılarının zamanını (kayıt içeriğini değil) bu bilgisayarda saklar. Bağlantıyı istediğin zaman kaldırırsın.
6. *Geri bildirim* (yalnızca sen gönderdiğinde): formda yazdıkların, istersen sürüm ve sistem bilgisi, istersen yanıt
   adresin ve en çok üç ekran görüntüsü Google'ın Apps Script hizmeti (`script.google.com`) üzerinden geliştiriciye
   e-postayla iletilir. Kayıtlarından hiçbir şey eklenmez. Yanıt vermek dışında kullanılmaz, kimseyle paylaşılmaz.
7. *OneDrive yedeği* (isteğe bağlı): günlük yedek bilgisayarındaki OneDrive klasörüne yazılır; OneDrive onu Microsoft
   hesabına eşitler (Microsoft'un koşullarına tabi). Ajandam OneDrive'a doğrudan bağlanmaz.
8. Ajandam'ın ekranı Microsoft Edge WebView2 ile çalışır; WebView2'nin kendi güncellemeleri ve güvenlik denetimleri
   Microsoft'un gizlilik bildirimine tabidir. Bağlantılar (ör. GitHub, Microsoft'un WebView2 sayfası) yalnızca sen
   tıklayınca tarayıcında açılır.

**Haklarını kullanma.** Kayıtların sana aittir: Ayarlar › Veriler ve yedek'ten yedek indirir, CSV olarak dışa aktarır ya
da tümünü silersin. Geliştiricide senden bir kayıt yoktur; geri bildirimle gönderdiğin bir mesajın silinmesini uygulamadaki
Ayarlar › Hakkında › Geri bildirim gönder'den ya da [GitHub sayfasından](https://github.com/tolgacodes-dev/ajandam/issues)
isteyebilirsin.

**Çocuklar.** Ajandam çocuklara yönelik değildir ve bilerek çocuklardan bilgi toplamaz.

**Değişiklikler.** Bu politika değişirse yeni hali bu adreste, tarihiyle yayımlanır; önemli değişiklikler uygulamanın
Yenilikler penceresinde duyurulur.

**İletişim.** Ajandam'ın GitHub sayfası: [github.com/tolgacodes-dev/ajandam/issues](https://github.com/tolgacodes-dev/ajandam/issues)
(herkese açık) ya da uygulamada Ayarlar › Hakkında › Geri bildirim gönder (yalnızca geliştiriciye gider).
