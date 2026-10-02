# Yenilikler

Ajandam'ın sürüm notları. Her sürümün ilk bölümü uygulama içindeki güncelleme penceresinde de gösterilir.
Sürüm numaraları [anlamsal sürümlemeye](https://semver.org/lang/tr/) uyar.

## [3.3.0] – 2026-10-02

- **Ajandam artık Windows'ta:** hesaplar, ödemeler, bütçe, ajanda, notlar, raporlar, ekstre ve döküm içe aktarma Mac'teki gibi. Kayıtlar bilgisayarında (`%APPDATA%\Ajandam`) kalır; hesap, sunucu ya da izleme yok. Windows 10 ve 11 (64 bit).
- **Windows Hello:** PIN kilidini yüzünle, parmak izinle ya da Windows Hello PIN'inle de açabilirsin (Ayarlar › Güvenlik). PIN'ini unutursan Windows Hello ile doğrulayıp yeni bir PIN belirlersin.
- **Yedeğe dön (Windows):** Ayarlar › Veriler ve yedek › Yedeğe dön ile son 30 günün yedeklerinden birine dönersin; şu anki kayıtlar önce ayrı bir yedek olarak saklanır.
- **Windows bildirimleri:** sabah özeti, son günü gelen ödemeler, kart ekstreleri ve etkinlik hatırlatmaları Windows bildirimi olarak gelir, Ajandam kapalıyken de. Bildirime tıklayınca ilgili ekran açılır; faturanın bildiriminde **Ödendi** ve **Yarın hatırlat**, kart ekstresininkinde **Öde…** düğmesi var.
- **Görev çubuğunda:** simgede gecikmiş ve bugün son günü olan ödemelerin sayısı görünür. Simgeye sağ tıkla: Yeni gider, Yeni gelir, Yazarak ekle, Ekstre içe aktar, Kilitle.
- **Her yerden hızlı ekle:** hangi uygulamada olursan ol Ctrl+Alt+Space; küçük pencereye "market 250", "yarın 14:30 dişçi", "yapılacak: faturaları öde" ya da "not: …" yaz, Enter. Kısayolu Ayarlar › Windows'tan değiştirebilirsin. Ctrl+Alt+Space başka bir uygulamadaysa (ör. Claude'un hızlı girişi) Ajandam sıradaki boş kısayolu (Ctrl+Alt+A) kullanır ve söyler.
- **Bildirim alanında:** saatin yanındaki simgeye sağ tıklayınca bugünün ödemeleri, ajandan ve ayın durumu; bir satıra tıklayınca Ajandam o kayıtla açılır. Pencereyi kapatınca Ajandam arka planda çalışmaya devam eder, simgeden Çıkış ile kapanır. Kilitliyken menüde kayıt görünmez. İstemezsen Ayarlar › Windows'tan kapatabilirsin.
- **Windows açılınca başlat:** istersen Ajandam Windows'a giriş yapınca pencere açmadan başlar ve bildirim alanında bekler (Ayarlar › Windows).
- **Fiş okuma (Windows):** fişin fotoğrafını pencereye bırak ya da Ctrl+Shift+F; tutar, tarih ve iş yeri okunur (yazar kasa fişlerindeki yıldızlı tutarlar da), fiş kayda eklenir. Okuma bu bilgisayarda, Windows'un metin tanımasıyla yapılır; fotoğraf hiçbir yere gönderilmez.
- **Birlikte aç ve Gönder:** Dosya Gezgini'nde döküme ya da fiş fotoğrafına sağ tıkla: Birlikte aç › Ajandam ya da Gönder › Ajandam. Varsayılan PDF uygulaman değişmez.
- **OneDrive'a yedek:** istersen kayıtların her gün OneDrive'daki Ajandam Yedekleri klasörüne de kopyalanır (Ayarlar › Veriler ve yedek); yeni bir bilgisayara geçince Yedeğe dön'de eskisinin yedekleri de görünür.
- **Ayarlar › Yapay zeka iki bölüm:** "Ajandam'ın yapay zekası" Asistan'ın ve ekstre okumanın neyi kullandığını gösterir: ChatGPT hesabınla giriş ya da LM Studio, Ollama gibi yerel modeller (Mac'te Apple Intelligence da). Hiçbiri yoksa listede neden yalnızca "Otomatik" olduğu ve ne yapacağın yazar. "Hangi uygulamayla çalışacaksın?" ise tersini yapar: Claude, ChatGPT gibi uygulamalar kendi pencerelerinden kayıtlarına bakar.
- **Yerel modeller:** LM Studio ve Ollama ayrı ayrı görünür: kurulu mu, sunucusu çalışıyor mu, kaç model indirilmiş. LM Studio'nun ya da Ollama'nın sunucusu kapalıysa **Sunucuyu başlat** ile Ajandam açar; modeller hazır olunca Asistan ve döküm okuma onları kullanır, kayıtların bilgisayarından çıkmaz.
- **ChatGPT ile giriş (Windows):** ChatGPT hesabınla giriş yaparsan Asistan ve döküm okuma ChatGPT'nin modelleriyle çalışır; kullanım ChatGPT planından düşer, API anahtarı gerekmez, oturum bilgileri yalnızca senin Windows kullanıcının açabileceği biçimde şifrelenir.
- **Hangi uygulamayla çalışacaksın?** Ayarlar › Yapay zeka'da Claude, ChatGPT (Work ve Codex), Google Antigravity, LM Studio, Cursor, VS Code, Claude Code, OpenCode, Cline ve Kimi Code alt alta: bilgisayarda bulunup bulunmadığı, Ajandam'ın eklenip eklenmediği ve uygulamanın bağlanıp bağlanmadığı görünür. **X'e Ajandam'ı bağla** Ajandam'ı uygulamanın ayarına ekler ve doğrular (ayar dosyası yeniden okunur, Ajandam'ın sunucusu uygulamanın başlatacağı gibi denenir), sonra uygulamada ne yapacağını söyler. **Bağlantıyı test et**, **Kaldır** ve bulunamayan uygulama için indirme bağlantısı da orada. Uygulamanın diğer ayarlarına ve başka sunuculara dokunulmaz, dosyanın eski hali yedeklenir; geçersiz bir dosya değiştirilmez.
- **Claude'a uzantıyla:** Ajandam Claude'a uzantı olarak eklenir: Claude'da açılan pencerede Yükle'ye basman yeter, Claude'u yeniden açman gerekmez; Ajandam kurulmasını bekler ve bağlantıyı dener. Uzantının yeni sürümü varsa "yeniden kur" der, kaldırmak Claude › Ayarlar › Uzantılar'dan. Claude uzantıyı açamıyorsa (ör. Microsoft Store kurulumu) Ajandam Claude'un ayar dosyasına eklenir; Claude'u tamamen kapatıp açınca bağlanır. İkisi birden olursa (Claude araçları iki kez görür) Ayarlar söyler.
- ChatGPT'de Work ve Codex modları kayıtlarına bakar; normal sohbet (Chat) bilgisayardaki uygulamalara bağlanamaz, ChatGPT'yi Ajandam'ın içinde kullanmak için ChatGPT ile giriş yap. LM Studio'da model, eklentilerden mcp/ajandam açıkken bakar.
- **Bağlantı adresi:** "Yapay zeka uygulamaları bağlanabilir" açıkken Ajandam bu bilgisayarda bir MCP adresi açar (`http://127.0.0.1:47821/mcp/…`, Ayarlar › Yapay zeka'da Kopyala). Adres yapıştırarak sunucu eklenen uygulamalar Ajandam'a bununla da bağlanır: ChatGPT (Ayarlar › Eklentiler › MCP sunucuları › Sunucu ekle › Akış Destekli HTTP), LM Studio, Cursor, VS Code, Claude Code. Adres yalnızca bu bilgisayardan ve gizli anahtarla çalışır, tarayıcıdan gelen istekler reddedilir; Ajandam'ın açık olması gerekir. Claude'un "özel bağlayıcı"sı Anthropic'in sunucularından bağlandığı için yerel adrese ulaşamaz; Claude'u listeden bağla.
- **Gerçek bağlantı durumu:** "Bağlandı" yalnızca uygulama gerçekten bağlanınca görünür (son bağlantı ve son kullandığı araçla); eklenip henüz bağlanmamışsa ne yapacağın yazar. Ajandam uygulamanın kendi ayarından kaldırılmışsa (ör. Claude'un Uzantılar'ından) son bağlantısı yazar ve yeniden bağlarsın. **Bağlantıyı dene** Ajandam'ın MCP sunucusunu bir yapay zeka uygulaması gibi çalıştırıp cevap verdiğini gösterir. Bağlantılar ve araç adları günlüğe yazılır, kayıtların yazılmaz.
- Yapay zeka uygulamalarının başlattığı "Ajandam.exe --mcp" kayıt klasörüne hiçbir şey yazmaz; ChatGPT gibi MSIX paketli bir uygulamanın altında çalışıyorsa Ajandam'ı Dosya Gezgini'ne açtırır, böylece kayıtlar o uygulamanın kendi klasörüne değil her zamanki yerine yazılır. Ajandam kapalıysa pencere açmadan arka planda açılır; kilitliyken cevap verilmez.
- **Ayarlar › Windows:** Windows'a özgü her şey tek yerde (hızlı ekleme, bildirim alanı, başlangıç, bildirimler, görev çubuğu, fiş okuma, klavye, yakınlaştırma, Windows Hello).
- **Windows klavyesi:** Ctrl+Tab ile sekmeler arasında geç, Ctrl+W ile sekmeyi kapat, Ctrl+F ile ara, F11 ile tam ekran, F1 ile kısayollar. Yakınlaştırma (Ctrl + / − / 0, Ctrl ile tekerlek) hatırlanır. Tarayıcıdan kalan tuşlar (F5 ile yenileme, sayfada bul, Alt+← ile geri) Ajandam'da çalışmaz.
- Windows'ta kaydırma çubukları Windows 11'in kendi ince çubukları; Windows Kontrast temaları açıkken anahtarlar, seçili sekme ve PIN noktaları sistem renkleriyle görünür.
- **Mac'ten Windows'a taşı:** Mac'te Ayarlar › Veriler ve yedek › Yedek indir; Windows'ta aynı yerden Yedekten geri yükle.
- Windows'ta güncellemeler Mac'teki gibi: yeni sürüm arka planda indirilir, imzası ve SHA-256 özeti doğrulanır, tek tıkla kurulur.
- **Güncellemeler kendiliğinden kurulur:** indirilip doğrulanan yeni sürüm, Ajandam bildirim alanındayken (pencere 10 dakikadır kapalıyken) ya da Ajandam'dan çıkarken sessizce kurulur; Mac'te Ajandam menü çubuğundayken. Açık pencerede yarım kalan işin bölünmez, açık notların önce kaydedilir; arka planda kurulunca bildirimle haber verilir. Windows'ta Claude gibi bir yapay zeka uygulaması Ajandam'a bağlıyken beklenir. İstemezsen Ayarlar › Hakkında › Kendiliğinden kur'u kapat; o zaman eskisi gibi "Şimdi güncelle" ile kurarsın.
- Ajandam kapanırken ya da güncellenirken açık notundaki son değişiklikler de hemen kaydedilir.
- Kilit ekranındayken klavye kısayolları (arama dahil) çalışmaz.
- ⌘Z / Ctrl+Z ile geri alınca "Geri alındı" bildirimi iki kez çıkıyordu.

## [3.2.1] – 2026-10-01

**Düzeltme**
- Ayarlar › Görünüm'de **Cam görünüm** kapatılınca pencere boş kalıyordu; artık sayfa görünür kalır, açık ya da koyu düz arka planla açılır.

## [3.2.0] – 2026-10-01

- **Yeni sol menü:** bölümler Para, Plan ve analiz, Notlar başlıkları altında toplandı; her bölümün Ayarlar'daki gibi kendi renkli simgesi var. Bir grubu kapatsan da geciken ödeme başlığında görünür. Çok not olduğunda ilk 30'u listelenir, gerisi "… not daha" ile açılır. Ayarlar en altta sabit durur.
- **Touch ID senin seçimin:** Ayarlar › Güvenlik'te "Touch ID ile kilidi aç" anahtarı. Açarken parmak izin bir kez doğrulanır; kapalıyken kilit yalnızca PIN'le açılır. Önceden Touch ID kullanıyorsan bir kez açman yeter.
- **PIN'ini mi unuttun?** Kilit ekranında Mac'inin parolasıyla doğrulayıp yeni bir PIN belirlersin ya da PIN'i kaldırırsın. Kayıtlarına dokunulmaz.
- **ChatGPT uygulamasına bağlan:** Ayarlar › Yapay zeka'da Claude ve ChatGPT için iki kart var. "ChatGPT'ye bağla" Ajandam'ı ChatGPT'nin Mac uygulamasına ekler (MCP); ChatGPT kayıtlarına bakar, ekleme önerir, öneriler senin onayını bekler. ChatGPT hesabınla giriş ayrı bir seçenek olarak duruyor.
- **Geri bildirim gönder:** hata, öneri ya da soru için kısa bir form. GitHub'da hazır doldurulmuş olarak açılır ya da metni kopyalayıp istediğin yere yapıştırırsın. İstersen sürüm ve Mac bilgisi eklenir; kayıtların eklenmez. Yardım menüsünde ve Ayarlar › Hakkında'da.
- **Daha okunaklı:** pencere ve panel başlıkları, tablolar, düğmeler ve durum çubuğu düz yazı tipinde; tutarlar eşit genişlikte kaldı. Kategori adlarında "&" yerine "ve" (Market ve gıda); içe aktarma ve kısayol yazımları her yerde aynı.
- **Fiş tek yerde:** yeni kayıtta "Fiş / fatura ekle" ile "Fişten doldur" yan yana.

**Düzeltmeler**
- Ayarlar penceresinin sol sütunu alttan kesik görünüyordu.
- Hesap kartına sağ tıklayıp "Ayrıntıları göster" deyince bir şey olmuyordu; artık hesabın ayrıntılarına kayar ve kısa bir süre vurgular.
- Özet ayın başında bu ayı geçen ayın tamamıyla karşılaştırıyordu; artık geçen ayın aynı günleriyle karşılaştırır.
- Yenilikler penceresi alçak ekranda kartları kesiyordu; Kart araçları aşağı kaymış açılıyordu.
- Dar pencerede takvimdeki tutarlar yandaki güne taşıyordu, Raporlar'daki tablolar kesiliyordu, grafik yazıları çok küçülüyordu, Bütçe'de "Limit yok" kesiliyordu, kilit ekranında "PIN'ini mi unuttun?" görünmüyordu.
- Sekmeler taşınca fare tekerleğiyle kaydırılır. Kart şeridinde sağ tık menüsü bazen hemen kapanıyordu.
- Boş ekranlarda çelişen yazılar ("Hesap yok" ile Genel hesap yan yana) ve kayıt yokken uydurma grafik ölçekleri kalktı.
- Hakkında'daki iki güncelleme düğmesi bire indi; PIN kilidi kapalıyken ⇧⌘L uyarısı onay işaretiyle görünüyordu.

## [3.1.0] – 2026-10-01

- **Sağ tık menüleri:** hesap kartına, işleme, ödemeye, düzenli kayda, aboneliğe, etkinliğe, hedefe, borca, bütçe satırına, nota, klasöre, sekmeye ya da takvim gününe sağ tıklayınca o şeyle ilgili işlemler açılır: düzenle, bakiyeyi güncelle, harcama ekle, öde, IBAN'ı kopyala, varsayılan hesap yap, arşivle. Boş yerde yeni kayıt, arama ve Asistan. Klavyeden ⇧F10 ile de açılır. Yazı alanlarında Kes, Kopyala, Yapıştır kalır; işe yaramayan "Yeniden Yükle" kalktı.
- **Özet dönemleri:** Özet tek ay yerine son 3 ay, 6 ay, 1 yıl ya da 2 yıl için de gösterilir ve önceki dönemle karşılaştırılır; [ ve ] dönem kadar kayar.
- **Kart görseli:** hesabı düzenlerken kartına Mac'inden bir resim ekleyebilirsin; kartın sağ üst köşesinde görünür.
- **⌘Z ile geri al:** sildiğin kaydı, arşivlediğin hesabı, kaldırdığın kategoriyi ⌘Z ile geri getirirsin.
- **İşlemi her ay tekrarla:** bir işleme sağ tıklayıp "Her ay tekrarla…" dersen tutarı, kategorisi ve hesabıyla düzenli kayıt olur.
- **Ekler açılır:** kayda eklenmiş fiş ya da fatura (PDF, fotoğraf) tıklayınca Mac'indeki uygulamasında açılır.
- **Daha sağlam kayıt ve yedek:** bozulan bir kayıt dosyası en yeni yedekten geri yüklenir ve haber verilir. Yedekten dönüş yarıda kalırsa hiçbir dosya değişmez. Ajandam iki kez açılmaz. iCloud Drive yedekleri her Mac için ayrı klasörde tutulur.
- **Güvenlik:** ChatGPT oturumu Mac'inin Anahtar Zinciri'nde saklanır. Excel dökümleri sayfadan ayrı bir işçide okunur.

**Düzeltmeler**
- Kart taksitleri ay sonuna yakın alışverişlerde aynı ekstreye iki kez düşebiliyordu; artık her ekstreye bir taksit düşer.
- Hafta sonuna ya da tatile denk gelen kart son ödeme günü Özet'te, Hesaplar'da ve bildirimlerde de ilk iş gününe kayar.
- Hesap seçmeden girilmiş eski kayıtlar, varsayılan hesap değişince o hesaba kayıyordu; artık girildikleri hesapta kalır.
- Bütçe'deki ay sonu tahmini ileri tarihli giderleri de harcama hızına katıyordu; rapor CSV'si ileri tarihli kayıtları sayıyordu.
- Nakit akışı tahmini, ödenmemiş son ekstreyi bir sonraki ekstrede yeniden borç sayıyordu.
- Duraklatılan düzenli kayıt sürdürülünce aradaki aylar toplu kaydediliyordu; başlangıç tarihi değişen düzenli kayıt aynı ayı iki kez üretebiliyordu.
- Ayın 29'u, 30'u ya da 31'inde yenilenen abonelikler sonraki aylarda yanlış güne düşüyordu; faturaya bağlı ödemeler abonelik sanılabiliyordu.
- "25,000" gibi yazılan tutarlar 25 lira sayılıyordu.
- Ödenmiş ekstrede kart araçları hâlâ asgari ödeme gösteriyordu. Ay özetinde gelir artışı kırmızı görünüyordu.
- Hedeften biriken paradan fazlası çekilebiliyor, borca kalandan fazla ödeme girilebiliyor, etkinliğin bitişi başlangıcından önce olabiliyordu.
- Ekstre penceresi, yanlışlıkla arka plana tıklayınca yüklenen dökümlerle birlikte kapanıyordu; artık Esc'ye iki kez basınca kapanır.
- Anımsatıcılar: Ajandam'da "ödendi"yi geri alınca, kapalı anımsatıcı yüzünden ödeme yeniden ödendi sayılıyordu; artık anımsatıcı yeniden açılır.
- Açık temada soluk yazılar daha okunaklı; uzun hesap ve not adları taşmıyor; uzun pencereler kaydırılıyor. Pencere kapanınca odak açan düğmeye döner; menüler ok tuşları, Home, End ve Esc ile kullanılır.

## [3.0.1] – 2026-10-01

- **ChatGPT ile giriş:** ChatGPT hesabınla giriş yapınca Asistan ve döküm okuma ChatGPT'nin modelleriyle çalışır. Kullanım ChatGPT planından düşer, API anahtarı gerekmez; kayıt özetleri yalnızca izin verirsen gönderilir.
- **Asistan her sayfada:** üst çubuktaki **Asistan** düğmesi, + menüsü ya da ⇧⌘A ile açılır.
- **Ajandam Hakkında penceresi:** Ajandam menüsündeki "Ajandam Hakkında" artık kendi penceresinde açılır: sürüm, derleme tarihi, güncelleme durumu, güncellemeyi denetleme ve kurma, destek.
- **Ayarlar › Hakkında sadeleşti:** büyük tanıtım kartı yerine kısa bir uygulama satırı, güncellemeler en üstte. Yardım menüsüne destek ve GitHub sayfası eklendi.

## [3.0.0] – 2026-10-01

Ajandam artık GitHub'dan ücretsiz indiriliyor ve tek tıkla güncelleniyor.

- **Yapay zeka, API anahtarı olmadan:** Apple Intelligence (cihaz içinde), Ollama ya da LM Studio ile yerel model ve Claude masaüstü bağlantısı (MCP).
- **Ajandam Asistanı:** sorularını kayıtlarından cevaplar, gerekirse kayıt ekleme ya da düzeltme önerir.
- **Öneriler kutusu:** yapay zekanın önerdiği her ekleme ve değişiklik senin onayını bekler.
- **Ekstre içe aktarmada yapay zeka:** kurallarla okunamayan dökümler ve taranmış PDF'ler okunur, belirsiz satırlara kategori önerilir, toplamlar ekstreyle karşılaştırılır.
- **Öğrenen kategoriler:** bir iş yerinin kategorisini değiştirdiğinde Ajandam hatırlar; sonraki dökümlerde ve hızlı eklemede kendiliğinden uygular.
- **Kart araçları:** asgari ödeme (limite göre %20 / %40), TCMB azami faiz oranları, KKDF ve BSMV ile "yalnızca asgariyi ödersem" ve "her ay şu kadar ödersem" hesabı. Hafta sonuna ya da tatile denk gelen son ödeme günü ilk iş gününe kayar; o güne kadar gecikmiş sayılmaz.
- **Enflasyon raporu:** gelir ve giderlerin TÜFE ile enflasyondan arındırılmış hali; TÜİK'in 12 aylık ortalamasıyla kira artış sınırı.
- **Net varlık:** ay ay net varlık ve varlık türlerine göre dağılım; yeni **Fon ve BES** hesap türü, BES devlet katkısı tahmini.
- **Resmî tatiller ve vergi takvimi:** ajandada tatiller ve arifeler; Ödemeler'de MTV, emlak ve gelir vergisi son günleri.
- **Tek tıkla güncelleme:** yeni sürüm arka planda indirilir, imzası ve özeti doğrulanır, tek tıkla kurulur. Kurulamazsa nedeni söylenir ve eski sürüm çalışmaya devam eder.
- **Notlarda tablolar:** Markdown tabloları (`| Kalem | Tutar |`) önizlemede tablo olarak görünür; sütunlar sağa ya da ortaya hizalanabilir.
- **Yeni Hakkında bölümü:** sürüm ve güncelleme durumu, destek ve iletişim, gizlilik ve kullanım koşulları.

**Düzeltmeler**
- Özet'teki ay sonu tahmini kart ekstresini iki kez düşüyordu.
- Net varlık tablolarında artışlar kırmızı görünüyordu; grafik kayıtların başladığı aydan önce düz bir çizgiyle başlıyordu.
- Ekstrede elle girilmiş benzer kaydı bulunan satır "Diğer" görünüyordu; artık o kaydın kategorisini alır.
- Notlarda tarih ya da tutar içeren bağlantılar bozuk görünüyordu.
- Ekstreyi yeniden okuyunca daha önce seçtiğin kategoriler başka satırlara kayabiliyordu.
- Ay görünümündeki takvim artık pencereyi dolduruyor; not önizlemesi başlıkla aynı hizada.

## [2.5.2] – 2026-09

- Touch ID yalnızca kilit ekranında “Touch ID ile aç”a tıklayınca (ya da Enter) sorulur; kendiliğinden açılmaz.

## [2.5.1] – 2026-09

- Yeni Ayarlar penceresi: bölümler, arama, aç/kapa anahtarları; her yerden ⌘, ile açılır.
- Tema “Sisteme göre” iken Mac'in açık ya da koyu görünümü canlı izlenir.
- ⇧⌘L ile hemen kilitle; kilit ekranından pencere taşınabilir.
- Kısayol değiştirme ve PIN girişindeki hatalar düzeltildi.

## [2.5] – 2026-09

- Canlı kripto, döviz ve altın değeri; abonelik yakalama; nakit akışı tahmini; ay sonu özeti.
- Menü çubuğu ve her yerden hızlı ekleme (⌃⌥A); bildirimde “Ödendi” ve “Yarın hatırlat”.
- Anımsatıcılar üzerinden iPhone'a hatırlatma; fiş okuma; “Ajandam'a sor”; iCloud Drive'a yedek; cam görünüm.

## [2.1] – 2026-09

- Notlara ayrı başlık alanı, yazı görünümü ve biçim çubuğu, sıralama, kopyala/kaydet/yazdır.

## [2.0] – 2026-09

- İlk Mac uygulaması: bildirimler, Dock rozeti, Touch ID, sürükle-bırak ekstre, menüler ve kısayollar, yazdırma, yedekten geri dönme.
