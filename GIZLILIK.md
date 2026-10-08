# Ajandam gizlilik politikası

Son güncelleme: 9 Ekim 2026

Ajandam'ı tolgacodes-dev geliştirir. Bu politika Ajandam'ın Mac uygulamasını (Mac App Store'dan ya da indirme sayfasından
kurulan) ve Windows uygulamasını (Microsoft Store'dan ya da kurulum dosyasıyla kurulan) kapsar.

**Kayıtların bilgisayarında kalır.** Girdiğin işlemler, hesaplar, ödemeler, etkinlikler, notlar ve ekler yalnızca bu
bilgisayarda, Ajandam'ın klasöründe saklanır:

- Mac App Store'dan kurulan Ajandam: `~/Library/Containers/app.ajandam.mac` (macOS'un Ajandam'a ayırdığı klasör)
- indirme sayfasından kurulan Mac uygulaması: `~/Library/Application Support/Ajandam`
- Microsoft Store'dan kurulan Ajandam: `%LOCALAPPDATA%\Packages\<Ajandam paketi>\LocalState`
- kurulum dosyasıyla kurulan Windows uygulaması: `%APPDATA%\Ajandam`

Ajandam hesap açtırmaz; reklam, izleme kodu, kullanım istatistiği ya da geliştiriciye gönderilen çökme raporu içermez.
Geliştirici kayıtlarını göremez. Mac App Store'dan kurulan Ajandam'ı Launchpad'den silmek, Microsoft Store'dan kurulanı
kaldırmak ya da Windows Ayarları'nda sıfırlamak bu kayıtları da siler; önce yedek indir.

**Ajandam'ın internete çıktığı yerler.** Ajandam internetsiz de çalışır. Aşağıdakiler dışında hiçbir bağlantı kurmaz:

1. *Canlı fiyatlar ve kurlar* (Ayarlar › Genel › Canlı fiyatlar açıkken ve döviz, altın, kripto ya da dövizli bir
   hesabın varsa; en çok 10 dakikada bir): Binance (`api.binance.com`, `data-api.binance.vision`), Truncgil
   (`finans.truncgil.com`), TCMB (`www.tcmb.gov.tr`; dövizli bir işlemi geçmiş bir tarihle girerken o günün kuru da),
   jsDelivr'deki günlük kur listesi (`cdn.jsdelivr.net`, `fastly.jsdelivr.net`) ve ona ulaşılamazsa aynı listenin
   `currency-api.pages.dev`'deki kopyası. Bu isteklerde kayıtlarından hiçbir şey gönderilmez.
2. *Türkiye verileri* (TÜFE, kart faiz oranları, asgari ödeme sınırı, bayramlar, kısa duyurular; açılıştan kısa süre sonra
   ve 6 saatte bir, Ayarlar › Hakkında › Türkiye verileri açıkken): Ajandam'ın GitHub'daki indirme deposundan
   (`raw.githubusercontent.com`), Ajandam'ın imzasıyla doğrulanan bir veri dosyası. Kayıtlarından hiçbir şey gönderilmez.
3. *Güncellemeler:* Mac App Store'dan kurulan Ajandam'ı Mac App Store, Microsoft Store'dan kurulanı Microsoft Store
   günceller; Ajandam bunlarda güncelleme denetlemez. İndirme sayfasından ya da kurulum dosyasıyla kurulan Ajandam yeni
   sürümü aynı depodan (`github.com`) denetler ve indirir; bu istekte kayıtlarından hiçbir şey gönderilmez.
4. *ChatGPT ile giriş* (isteğe bağlı): girişi tarayıcında OpenAI'nin sayfasında yaparsın (`auth.openai.com`). Asistan bir
   soruyu yanıtlamak, ekstre okumak ya da kategori önermek için gereken bilgiyi (sorun, hesap ve kategori adları, ilgili
   kayıtların tarihi, tutarı ve açıklaması, toplamlar; notlar yalnızca Ayarlar'dan izin verirsen) senin iznin olduğunda
   OpenAI'ye (`api.openai.com`) gönderir. IBAN, TC kimlik, kart ve telefon numaraları ve e-posta adresleri gönderilmeden
   gizlenir. İzin Ajandam kapanana kadar geçerlidir; Ayarlar › Yapay zeka'dan her zaman kapatabilir, oturumu
   kapatabilirsin. Oturum anahtarları bu bilgisayarda saklanır: Mac'te Anahtar Zinciri'nde, Windows'ta Windows'un
   şifrelemesiyle (DPAPI). OpenAI'ye gidenler OpenAI'nin koşullarına ve gizlilik politikasına tabidir.
5. *Cihazda çalışan yapay zeka:* Apple Intelligence (Mac'te, macOS 26 ve Apple çipli Mac'lerde) ve yerel modeller (Ollama,
   LM Studio; `127.0.0.1`) bu bilgisayarda çalışır; kayıtların bilgisayardan çıkmaz. Fiş fotoğrafındaki yazı da
   bilgisayarında okunur (Mac'te macOS'un, Windows'ta Windows'un metin tanımasıyla).
6. *Ajandam'a bağladığın yapay zeka uygulamaları* (Claude, ChatGPT, Cursor gibi; Ayarlar › Yapay zeka'da "bağlanabilir"
   açıksa): uygulama Ajandam'la bu bilgisayarda konuşur (MCP; isteğe bağlı yerel adres yalnızca `127.0.0.1`). O uygulamanın
   gördüğü kayıtları kendi hizmetine göndermesi o uygulamanın gizlilik politikasına tabidir. Ajandam bağlanan uygulamanın
   adını ve araç çağrılarının zamanını (kayıt içeriğini değil) bu bilgisayarda saklar. Bağlantıyı istediğin zaman
   kaldırırsın. Mac App Store'dan kurulan Ajandam bu uygulamaların ayar dosyalarına (ev klasöründe) yalnızca senin bir kez
   verdiğin izinle ve yalnızca Ajandam'ı eklemek ya da çıkarmak için yazar.
7. *Geri bildirim* (yalnızca sen gönderdiğinde): formda yazdıkların, istersen sürüm ve sistem bilgisi, istersen yanıt
   adresin ve en çok üç ekran görüntüsü Google'ın Apps Script hizmeti (`script.google.com`) üzerinden geliştiriciye
   e-postayla iletilir. Kayıtlarından hiçbir şey eklenmez. Yanıt vermek dışında kullanılmaz, kimseyle paylaşılmaz.
8. *Bulut yedeği* (isteğe bağlı): günlük yedek bilgisayarındaki iCloud Drive (indirme sayfasından kurulan Mac
   uygulaması) ya da OneDrive (Windows) klasörüne yazılır; iCloud Drive onu Apple hesabına, OneDrive Microsoft hesabına
   eşitler (onların koşullarına tabi). Ajandam bu hizmetlere doğrudan bağlanmaz. Mac App Store'dan kurulan Ajandam'da
   bulut yedeği yoktur.
9. *iPhone'a hatırlatma* (isteğe bağlı, Mac): açarsan bekleyen ödemeler, kart ekstreleri ve yapılacaklar macOS'un
   Anımsatıcılar uygulamasındaki "Ajandam" listesine eklenir; iPhone'una ulaşması Apple'ın iCloud eşitlemesiyle olur
   (Apple'ın koşullarına tabi).
10. Ajandam'ın ekranı Mac'te macOS'un WebKit'i, Windows'ta Microsoft Edge WebView2 ile çalışır; WebView2'nin kendi
    güncellemeleri ve güvenlik denetimleri Microsoft'un gizlilik bildirimine tabidir. Bağlantılar (ör. GitHub)
    yalnızca sen tıklayınca tarayıcında açılır.

**Haklarını kullanma.** Kayıtların sana aittir: Ayarlar › Veriler ve yedek'ten yedek indirir, CSV olarak dışa aktarır ya
da tümünü silersin. Geliştiricide senden bir kayıt yoktur; geri bildirimle gönderdiğin bir mesajın silinmesini uygulamadaki
Ayarlar › Hakkında › Geri bildirim gönder'den ya da [GitHub sayfasından](https://github.com/tolgacodes-dev/ajandam/issues)
isteyebilirsin.

**Çocuklar.** Ajandam çocuklara yönelik değildir ve bilerek çocuklardan bilgi toplamaz.

**Değişiklikler.** Bu politika değişirse yeni hali bu adreste, tarihiyle yayımlanır; önemli değişiklikler uygulamanın
Yenilikler penceresinde duyurulur.

**İletişim.** Ajandam'ın GitHub sayfası: [github.com/tolgacodes-dev/ajandam/issues](https://github.com/tolgacodes-dev/ajandam/issues)
(herkese açık) ya da uygulamada Ayarlar › Hakkında › Geri bildirim gönder (yalnızca geliştiriciye gider).
