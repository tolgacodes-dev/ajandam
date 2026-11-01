# Yenilikler

Ajandam'ın sürüm notları. Her sürümün ilk bölümü uygulama içindeki güncelleme penceresinde de gösterilir.
Sürüm numaraları [anlamsal sürümlemeye](https://semver.org/lang/tr/) uyar.

## [4.0.0] – 2026-11-01

Ajandam 4 telefonlara açılıyor: yapay zeka artık telefonda ve tablette de var, yeni bir platform eklendi, mağazadan kurulan Ajandam'da uygulama simgesi dürüst, Apple Intelligence'ın simgesi geri geldi; güvenlik baştan sona gözden geçirildi, araç zinciri yenilendi. Öne çıkanlar:

- **Telefonlarda yapay zeka:** iPhone ve iPad'de **ChatGPT ile giriş** (ChatGPT Plus ya da Pro): Asistan, ekstre okuma, ay yorumu ve "Ajandam'a sor" telefonda da çalışıyor; Apple Intelligence varsa önce o. Oturum cihazın güvenli anahtar deposunda, "Tüm verileri sil" onu da siliyor.
- **Android (yeni):** telefon ve tablette Ajandam; kayıtlar cihazda, Google Play'den ya da GitHub'daki APK ile kurulur. ChatGPT ile giriş, parmak izi ya da yüzle açma, bildirimler, ekstre ve döküm içe aktarma, Türkiye verileri var; fiş okuma (kamera), yedek klasörü, şifreli yedek, cihaz içi yapay zeka ve yerel model bu sürümde yok.
- **Uygulama simgesi:** mağazadan kurulan Ajandam'da simge seçimi yalnızca uygulamanın içinde geçerli; Dock ya da Başlat menüsü simgesinin neden değişmediği Ayarlar'da yazıyor ("simgeler değişmiyor" düzeltmesi). İndirilen baskılarda simge eskisi gibi değişiyor. Apple Intelligence satırında Apple'ın kendi simgesi.
- **Güvenlik:** ekstre, döküm, defter ve yedek dosyalarından ve sunuculardan gelen her metin sayfaya kaçışla yazılıyor; yedekten dönüş yapay zeka uygulamalarının izinlerini ve otomatik onayı getirmiyor; PIN belgesi harf duyarsız disklerde gölgelenemiyor; okunamayan yedek anahtarı "parola yok" sayılmıyor (şifresiz kopya yazılmıyor); claude.ai'da kütüphaneler özetle (SRI) yükleniyor; Claude uzantısı yalnızca imzalı ve Gatekeeper onaylı Ajandam'ı başlatıyor; kurulum ve yayın adımları sıkılaştırıldı.
- **Açılış:** Ajandam artık her açılışta yeni açılış animasyonuyla açılıyor: simge bulanıktan netleşir, üstünden bir ışıltı geçer, adı yazılır, bir halka yayılır, altta sürüm numarası; kayıtlar hazır olunca simge yerine süzülür ve ekran yerleşir (yaklaşık bir buçuk saniye; tıklama ya da tuş hemen bitirir). İstersen Ayarlar › Görünüm'den yalnızca güncellemeden sonra oynasın ya da kapalı olsun; Hareketi azalt açıkken kısa bir solma.
- **Araçlar:** Rust 1.97, uygulama çatısı ve paketler güncel; yayın iş akışlarında dal denetimi tek yerde, araç indirmeleri özetle sabit.

---

**Açılış (her platform)**
- Açılış animasyonu her açılışta (3.5'ten beri yalnızca güncellemeden sonra oynuyordu): arka planda yavaşça kayan ışık, bulanıktan netleşen simge ve harfler, simgeden dışarı yayılan halka, simgenin üstünden geçen ışıltı, altta sürüm numarası; sonra simge yerine süzülür, ekran parça parça yerleşir.
- Ayarlar › Görünüm › Açılış animasyonu: Her açılışta (varsayılan), Güncellemeden sonra ya da Kapalı (yalnızca kısa solma); tercih bu cihazda. Hareketi azalt / Sade'de her kipte kısa solma; tıklama, tuş ve bildirimden gelen iş animasyonu hemen bitirir; yedeğe dönüşün yeniden yüklemesinde oynamaz.

**iPhone ve iPad**
- ChatGPT ile giriş: giriş sayfası uygulamanın içinde (Safari görünümü), oturum Anahtar Zinciri'nde; Ayarlar › Yapay zeka'da Apple Intelligence ve ChatGPT yan yana; Asistan, ekstre okuma, ay yorumu ve "Ajandam'a sor" ChatGPT'yle.
- Apple Intelligence satırında Apple'ın simgesi (apple.intelligence).
- Gizlilik: ChatGPT'ye yalnızca sen giriş yaptıysan, kişisel bilgiler gizlenerek gidiyor; Ayarlar › Gizlilik'te yazıyor.
- İlk açılıştaki tanıtımda Asistan kartı: Apple Intelligence yoksa ChatGPT ile giriş.

**Android**
- İlk sürüm (Google Play kapalı testinden; GitHub'da APK): Windows uygulamasının çekirdeği ve ortak modülleri, telefon ve tablet düzeni, geri tuşu, kenardan kenara görünüm, koyu tema.
- Parmak izi ya da yüzle açma ("PIN'ini mi unuttun?" cihazın ekran kilidiyle); zamanlanmış bildirimler; ekstre, döküm ve defter içe aktarma; ekler; Türkiye veri kanalı; e-postayla geri bildirim.
- Google yedeğine yalnızca kayıtlar ve yalnızca ekran kilidi varken uçtan uca şifreli gidiyor; Ajandam'ın günlüğü ve ChatGPT oturumu gitmiyor.
- ChatGPT ile giriş: oturum jetonları Android Keystore'daki anahtarla şifreli; giriş sayfası tarayıcıda açılıyor, dönünce Ajandam öne geliyor (Ajandam kilitliyse önce kilit açılıyor).
- İlk açılıştaki tanıtımda Asistan kartı (ChatGPT ile giriş).
- Bu sürümde olmayanlar: fiş okuma (kamera), yedek klasörü, iki cihazı birleştirme, şifreli not ve şifreli yedek, paylaş menüsü, ana ekran aracı, yazdırma, yerel modeller ve yapay zeka uygulamalarının bağlantısı (MCP).

**Mac**
- Mac App Store'dan kurulan Ajandam'da uygulama simgesi seçimi yalnızca pencerede geçerli; Dock simgesinin neden değişmediği Ayarlar'da yazıyor. İndirilen Ajandam'da simge eskisi gibi değişiyor.
- Apple Intelligence satırında Apple'ın simgesi.
- "Ajandam'a sor" ve ay yorumu Apple Intelligence yoksa Ayarlar'da seçili sağlayıcıyla (ChatGPT ya da yerel model) çalışıyor.
- Claude uzantısı (.mcpb) Spotlight'la bulduğu Ajandam'ı yalnızca imzası sağlam ve Gatekeeper onaylıysa başlatıyor; Uygulamalar klasöründekine dokunulmuyor.
- Yardım › Yenilikler'de 4.0 kartları: telefonlar, Apple Intelligence ve ChatGPT, uygulama simgesi, güvenlik, yedekten dönüş, Claude uzantısı (App Store baskısında başka mobil platform anılmıyor).

**Windows**
- Microsoft Store'dan kurulan Ajandam'da uygulama simgesi seçimi yalnızca pencerede geçerli; Başlat menüsü simgesinin neden değişmediği Ayarlar'da yazıyor. Kurulum dosyasıyla kurulan Ajandam'da simge eskisi gibi değişiyor.
- Başka bir yapay zeka uygulamasının ayar dosyasına Ajandam eklenmeden ya da çıkarılmadan önce Ajandam kendi penceresinde soruyor (Mac'teki gibi).
- Kurulum: WebView2 yoksa Microsoft'tan indirilen kurulum dosyası Microsoft'un imzası doğrulanmadan çalıştırılmıyor; önceki sürüm kaldırılınca artakalan kaldırıcı ve boş klasör temizleniyor.
- Yedek parolasının anahtar dosyası okunamıyorsa (izin, bozuk dosya) "parola yok" sayılmıyor: otomatik kopyalar şifresiz yazılmıyor, Ayarlar "erişilemedi" diyor.
- Yardım › Yenilikler'de 4.0 kartları: telefonlar, uygulama simgesi, ayar dosyası onayı, kurulum, güvenlik, yedekten dönüş (Microsoft Store baskısında o baskıda olan anlatılıyor).
- Tauri 2.12.5 ve komut satırı aracı 2.12.4; Rust paketleri güncel.

**Düzeltmeler (çalışan uygulamada uçtan uca denemede bulundu)**
- Ekstre okuma: ABD biçimli tutarlar ("1,150.00") ve virgüllü binlikler ("5,400,59") tek tutar olarak okunuyor; eskiden "1,150.00" harcaması 1,15 ve 0,00 diye iki tutar oluyor, 1.150 TL'lik harcama 1,15 TL kaydediliyordu (otomatik yol; sütunları elle seçince doğruydu).
- Mac, Windows, iPhone, iPad ve Android'de kayıt dosyası yazılamayınca ("Bağlantını kontrol et" yerine) nedenin klasör izni ya da disk sorunu olabileceği, Ajandam'ın yeniden deneyeceği ve yedek alınması söyleniyor.

**Güvenlik**
- Hesap kartındaki son 4 hane, para birimi ve tür adı; "Başka uygulamadan taşı" önizlemesindeki karşı hesap; ekstre satırındaki hata metni; iade, bölüşme ve yatırım formlarının para birimi alanları HTML'e kaçışla yazılıyor.
- Yerel depo birleştirmesi ve yedekten gelen tanınmayan alanlar `__proto__`, `constructor` ve `prototype` adlı anahtarları almıyor.
- claude.ai'da pdf.js ve SheetJS cdnjs'ten alt kaynak bütünlüğü (SRI, SHA-384) ile yükleniyor.
- Yedekten dönüş (uygulamanın tam dönüşü ve sayfanın geri yüklemesi) yapay zeka uygulamalarının izinlerini, bağlanma iznini, otomatik onayı ve buluta gönderme iznini yedekten almıyor; bu cihazdakiler kalıyor.
- PIN belgesinin yolu ("ayarlar/guvenlik") harf duyarsız karşılaştırılıyor: harf varyantı yazılmıyor, yedeğe girmiyor, yedekten dönmüyor.
- Yedek parolasının anahtarı okunamıyorsa ya da çözülemiyorsa "parola yok" sayılmıyor: kopyalar şifresiz yazılmıyor, durum "erişilemedi".
- Yayın iş akışları: dal denetimi tek bir ortak adımda; XcodeGen zip'i SHA-256 ile sabit.

**Araçlar ve bağımlılıklar**
- Rust 1.97.0; Rust paketleri uyumlu sürümlerine güncellendi (üç kilit dosyası).
- pdf.js 3.11.174 ve SheetJS 0.18.5 bu sürümde kalıyor (pdf.js 4 yalnızca ES modülü, SheetJS'in yeni sürümleri cdnjs'te yok); pdf.js `isEvalSupported: false` ile, Excel okuma ayrı işçide ve süre sınırlı (docs/yayinlama.md › Bağımlılık güvenliği).

**Belgeler**
- Gizlilik politikası: ChatGPT ile giriş her platformda, oturumun nerede saklandığı (Anahtar Zinciri, DPAPI, Android Keystore); Android'de yapay zeka.
- Güvenlik: 4.0'daki kaçış, izin ve bütünlük kuralları; Claude uzantısının imza tasarımı (docs/yayinlama.md).
