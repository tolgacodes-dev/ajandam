# Yenilikler

Ajandam'ın sürüm notları. Her sürümün ilk bölümü uygulama içindeki güncelleme penceresinde de gösterilir.
Sürüm numaraları [anlamsal sürümlemeye](https://semver.org/lang/tr/) uyar.

## [3.5.0] – 2026-10-03

Bu sürüm, Ajandam'ın baştan sona denetiminde bulunan sorunları gideriyor: her düzeltme önce sorunu gösteren bir testle başladı. Öne çıkanlar:

- **Hızlı ekleme seni anlıyor:** "yarın 9 doktor" artık ₺9'luk gider değil, yarın 09:00'da bir etkinlik. "akşam 7'de yemek" 19:00, "haftaya salı", "dün", "10:00-11:30" ve "$5" ya da "5 €" anlaşılır. "her ayın 5'i kira 12.000" düzenli kayıt, "her pazartesi 10:00 toplantı" tekrarlayan etkinlik olur. Emin olamazsa iki seçenek gösterir (Tab ile değişir). Komut paleti, Özet'teki yazarak ekleme ve Windows'ta bildirim alanındaki **Yazarak ekle** de etkinlik, yapılacak ve not ekler.
- **Tekrarlayan etkinlikler:** her gün, N günde ya da haftada bir, seçtiğin günler, ayın son cuması; bitiş tarihiyle ya da sayıyla. Değiştirirken ve silerken **Yalnızca bu**, **Bu ve sonrakiler** ya da **Tümü**; önceki tekrarlar silinmez. Tüm gün kayıtlara da hatırlatma kurulur (ör. doğum gününden bir gün önce 09:00).
- **Bildirimler:** etkinlik ve yapılacak hatırlatmalarında **Yapıldı** ve **10 dk ertele** düğmeleri; geciken yapılacaklar sabah özetinde; sabah özeti ve hatırlatmalar ayrı ayrı kapatılabilir. PIN açıkken bildirimlerde ad ve tutar görünmez (istersen Ayarlar › Bildirimler'den açarsın). iPhone'da tamamlanan fatura tamamlandığı günle yazılır, tahmini tutar önce onaylatılır.
- **İlk açılış:** PIN artık isteğe bağlı: Ajandam önce karşılar, PIN'i istersen belirlersin; Touch ID ya da Windows Hello aynı ekranda. Mac'te ilk açılışta Ajandam tanıtılır, boş Özet'te bir "Başlarken" listesi var. Açılış animasyonu yalnızca kurulumdan ve güncellemeden sonra oynar; sonraki açılışlarda beklemezsin.
- **Kart ve nakit:** BDDK'nın yeni asgari ödeme sınırı uygulanır (kart limiti 100.000 ₺'ye kadar %20, üstü %40). Asgariyi ödediysen ekstre "gecikti" yerine "asgari ödendi · kalan faize girer" der. Nakit akışı ve gelecek aylar kira, aidat gibi tekrarlayan ödemeleri her ay sayar; Özet ve Bütçe aynı ay sonu tahminini (günlük harcama dahil) gösterir.
- **Döviz:** geçmiş tarihli dövizli kayıtlar ve geçmiş ayların net varlığı o günün TCMB kuruyla hesaplanır. Kur alınamazsa tutar kendi para biriminde görünür, ₺0 sayılmaz. Düzenli kayıtlar da dövizli olabilir (ör. 3.000 $ maaş).
- **Dökümler:** Excel'deki tarihler gün ile ay karışmadan, B/A sütunu ve "CR" ekleri doğru okunur. Taksitteki kuruş farkı ikinci bir plan açmaz, aynı mağazadan ayrı alışverişler birleşmez. Her dosyada toplamlar denetlenir; tutmazsa söylenir ve bakiye kendiliğinden eşitlenmez. Ay adlı ve yılsız tarihler, UTF-16 dosyalar ve iki para birimli ekstreler de okunur.
- **Yedekler:** günlük, iCloud ve OneDrive yedeklerinde fiş ve fatura ekleri de var. PIN yedeğe girmez; bir yedeğe dönmek kilidi kaldırmaz. Yedekten geri yükleme önce neyin değişeceğini gösterir, eski kopya yeni kaydın üzerine yazmaz ve geri alınabilir. "Tüm verileri sil" yedekleri ve ekleri de siler (önce sorar).
- **Asistan:** kayıtlarındaki yazılar (ör. bir havale açıklaması) asistana talimat veremez; değişiklik yalnızca sen istediğinde önerilir, düzenleme ve silme tek tek onaylanır. **Durdur** isteği gerçekten keser. IBAN, kart numarası, TC kimlik no, telefon ve e-posta buluta gitmeden gizlenir; notlar ve dökümler için ayrı izin var, ChatGPT'ye giriş yapmak izin sayılmaz. **Otomatik** önce bilgisayarındaki modeli kullanır.
- **Yapay zeka uygulamaları:** Claude, ChatGPT ve diğerleri hedefleri, borç ve alacakları ve düzenli kayıtları da görür; ödemeyi ödendi işaretlemeyi, yapılacağı tamamlamayı, kayıt düzenleme ve silmeyi, nota eklemeyi önerebilir (hepsi onayınla). Uzun listeler sayfa sayfa gelir, aynı istek iki kez kaydedilmez, onaysız kaydetme uygulama başına seçilir. Bağlantı adresi ayrı bir ayarla açılır ve gizli anahtarı yenilenebilir. MCP'nin 2026-07-28 sürümü desteklenir.
- **Notlar:** kod blokları, `[metin](adres)` bağlantıları, iç içe listeler ve ~~üstü çizili~~ yazı. Büyük notlarda yazmak hızlandı; arama bütün sözcükleri sırasız ve Türkçe harfleri her yazılışıyla bulur.
- **Mac ve Windows:** Mac açılınca başlat (macOS 13 ve üstü). Bilgisayar uyuyunca, ekran kilitlenince (Windows'ta Win+L) ya da kullanıcı değişince Ajandam da kilitlenir (PIN açıksa). Windows'ta kurumsal ağlarda Windows'un vekil sunucu ayarı ve sertifika deposu kullanılır.
- **Arayüz:** kenar çubuğundan açılan bölümler tek bir önizleme sekmesinde açılır, çift tıklayınca kalıcı olur. Klavye için "İçeriğe geç", F6 ve oklar; tek tuşlu kısayollar kapatılabilir. Açık temada düğmeler ve yazılar daha okunaklı; yeni kurulumda tema sistemin görünümünü izler. Binlerce kayıtta "Tüm aylar" ve arama takılmıyor.

---

**Güvenlik**
- Sayfa sıkı bir içerik güvenliği politikasıyla (CSP) açılır; Ajandam'ın köprüsü yalnızca kendi sayfasına cevap verir. Ekler yalnızca fotoğraf ve PDF olarak saklanır ve korumalı açılır.
- Mac: yapay zeka bağlantısını açmak ve başka uygulamaların ayar dosyalarına yazmak Mac'in kendi onay penceresiyle olur. Uygulama Hardened Runtime ile imzalanır; Web Denetçisi yalnızca geliştirme derlemesinde açık.
- Windows: güncelleme bilgisinin imzası sürüm numarasını da kapsar, eski bir sürüme geri döndürülemez; indirilen kurulum dosyası kurulana kadar değiştirilemez. Yapay zeka bağlantı kanalı yalnızca senin hesabına açık. Panoya kopyalanan IBAN ve bağlantı anahtarı Windows'un pano geçmişine ve bulut panosuna girmez.
- Başka uygulamaların ayar dosyaları (ör. Claude Code'un `~/.claude.json`'ı) yerinde düzenlenir: izinleri, yorumları ve anahtar sırası korunur; yedekleri de yalnızca senin okuyabileceğin izinlerle yazılır.
- Fiş fotoğraflarındaki ve geri bildirim ekran görüntülerindeki konum ve cihaz bilgisi (EXIF) silinir. CSV'ye aktarmada formül sayılabilecek hücreler metin olarak yazılır.

**Düzeltmeler**
- Yedekten geri yüklemede (ör. Mac'ten Windows'a taşırken) dövizli işlemlerin kuru kayboluyor, dolar hesabının bakiyesi değişiyordu.
- Taksitlerdeki kuruş farkı ikinci bir taksit planı açıyor, ₺10.000'lik alışveriş ₺18.333 olarak kaydediliyordu; aynı mağazadan aynı tutarlı ayrı alışverişler tek alışveriş sayılıyordu.
- Excel'deki gün.ay.yıl biçimli tarihler gün ile ayı karıştırıyor, bazı satırlar kayboluyordu; tamsayı biçimli hücrelerde kuruşlar düşüyordu. PDF'teki B/A sütunu okunmuyor, gelen paralar gider sayılıyordu.
- Nakit akışı tahmini kira gibi tekrarlayan ödemeleri yalnızca bir kez sayıyor, ay sonu bakiyesini olduğundan yüksek gösteriyordu.
- Kur alınamadığında dövizli hesaplar ₺0 sayılıyor, dövizli kartın gecikmiş ekstresi hatırlatmalardan düşüyordu.
- Hızlı eklemede "yarın 9 doktor" ₺9'luk gider, "1.5 kg peynir 450" Mayıs ayına gider, "her ayın 5'i kira 12.000" bugüne tek seferlik gider olarak kaydediliyordu.
- Tekrarlayan bir etkinliğin yalnızca bir gününü değiştirmek önceki bütün tekrarlarını siliyordu.
- Etkinlik hatırlatmaları iki kez geliyor, "Sessiz" seçimine uyulmuyordu; iPhone'a eşitlenen faturalar için üç ayrı uyarı gelebiliyordu. PIN kilidi açıkken bildirimlerde ödeme adları ve tutarlar görünüyordu.
- Yapay zeka seçilmemişken Asistan "Market bütçemi 6.000 TL yap" isteğini ₺6.000'lik gider olarak öneriyordu.
- Mac'te güncellemeden sonra ChatGPT için Anahtar Zinciri parolası sorulup Ajandam donabiliyordu.
- Asistan uzun sorularda modelin sınırını aşan metin gönderiyordu; **Durdur** isteği kesmiyordu.
- Fiş ve fatura ekleri hiçbir yedeğe girmiyordu; yeni bilgisayarda yedekten dönünce ekler kayboluyordu.
- Disk dolunca "Bağlantını kontrol et" deniyor, kaydedilmiş görünen değişiklikler kaybolabiliyordu.
- "Tüm verileri sil" yedekleri ve ekleri bırakıyordu. Mac'te kilitliyken **Yedekten Geri Dön** menüsü çalışıyordu.
- Windows'ta kaldırırken "Uygulama verilerini sil" işaretlense de kayıtlar silinmiyordu; Ajandam açılamadığında hiçbir ileti göstermeden kapanıyor, WebView2 çökünce sayfa boş kalıyordu.
- Yapay zeka uygulamalarından gelen aynı istek iki öneri oluşturuyordu; "Onaysız kaydet" açıkken kategori ve bütçe değişiklikleri de onaysız uygulanıyordu.
- Açık temada birincil düğmelerin yazısı, uyarı rengi ve menülerdeki klavye odağı zor okunuyordu; açık renkli kartlardaki küçük yazılar okunmuyordu. Kenar çubuğundaki her tıklama yeni bir sekme açıyordu.
- 2029'dan sonraki resmî tatiller tanınmıyordu; Kart araçları kısmi ödemeden sonra asgari ödemeyi ve faizi yanlış hesaplıyordu.

## [3.4.1] – 2026-10-03

- **ChatGPT'de başka bir hesapla giriş:** Ayarlar › Yapay zeka'da oturumu kapanmış hesabın yanında **Başka bir hesapla** var. Giriş beklenirken tarayıcıda "Bu hesap bu uygulamaya erişemez" ya da "Gerekli bir izin kullanılamıyor" görürsen **Başka bir hesapla dene** ya da **Vazgeç**. ChatGPT planını Ajandam'da kullanmak için Plus ya da Pro aboneliği gerektiği (OpenAI'nin kuralı) giriş düğmesinin yanında yazar; plan uygun değilse ya da giriş yarıda kalırsa Ajandam nedenini söyler.
- **Kullanım koşulları:** döviz kurlarının yedek kaynağı ve Windows uygulamasının açık kaynak bileşenleri (Tauri ve Rust kütüphaneleri) eklendi. Bileşenlerin tam listesi ve lisans metinleri indirme sayfasındaki ACIK-KAYNAK-LISANSLARI.txt dosyasında; Windows'ta aynı dosya Ajandam'ın kurulduğu klasörde de var.

**Düzeltmeler**
- ChatGPT'ye bir hesapla bağlandıktan sonra başka bir hesapla ya da başka bir çalışma alanıyla giriş yapılamıyordu: tarayıcıda "Bu hesap bu uygulamaya erişemez" çıkıyor, Ajandam girişi beklemeye devam ediyordu.
- ChatGPT'den çıkış yapınca oturum yalnızca bilgisayardan siliniyordu; artık OpenAI tarafında da kapatılır.

## [3.4.0] – 2026-10-03

- **Dövizli hesaplar:** banka, nakit ve birikim hesabını ya da kredi kartını dolar, euro veya 150'den fazla para biriminden biriyle açabilirsin; para birimi Türkçe adıyla ya da koduyla aranır. Bakiye kendi para biriminde, TL karşılığı altında görünür; net varlık, bütçe ve raporlar TL'ye çevrilerek hesaplanır. Döküm ve ekstre içe aktarma şimdilik TL hesaplarda.
- **Harcamayı kendi parasıyla yaz:** yurt dışı harcamasını $49,99 diye gir; o günün kuruyla TL karşılığı hesaplanıp kayda yazılır, **Kuru değiştir** ile bankanın uyguladığı kuru girebilirsin. Euro kartla dolar harcamada çapraz kur gösterilir. Kurlar TCMB, Truncgil ve jsDelivr'deki günlük kur listesinden alınır; internet yoksa son bilinen kur kullanılır.
- **Kilit ekranında adın:** Ayarlar › Güvenlik › Kilit ekranı'nda adını yaz, kilit ekranı "Tolga'nın Ajandası" diye açılsın. Türkçe ek adına göre kendiliğinden seçilir; istersen başlığı elle düzeltirsin. Arkada kayan bir ışık, yazılır gibi gelen başlık, tuşladıkça dolan noktalar; doğru PIN'de noktalar yeşerir, kilit yukarı kalkar.
- **Açılış animasyonu:** Ajandam açılırken simgesi belirir, adı yazılır, simge yerine (PIN varsa kilit ekranına) süzülür ve ekran yerleşir; seçtiğin uygulama simgesiyle. Animasyonlar sadeyse kısa bir solma.
- **Bildirim sesleri:** Ayarlar › Bildirimler'de sabah özeti, ödeme ve ekstre hatırlatmaları, gecikmiş ödemeler ve etkinlikler için ayrı ses seç. Mac'te altı yeni ses (Ajandam, Kristal, Damla, Zil, Nabız, Esinti), macOS sesi ya da sessiz; Windows'ta Windows'un bildirim sesleri ya da sessiz. **Dinle** ile seçmeden önce duyarsın.
- **Windows'ta menü çubuğu:** pencerenin üstünde Dosya, Düzen, Görünüm, Git ve Yardım menüleri. Alt+D, Alt+Z, Alt+G, Alt+İ ve Alt+Y ile açılır, oklarla gezilir; kısayollar menüde yazar. Dar pencerede tek bir menü düğmesine dönüşür. Görünüm menüsünden ya da Ayarlar › Windows'tan gizlesen de Alt tuşuyla açılır.
- **24 kart rengi ve banka tonu:** hesap ve hedef renklerinde koyu, canlı, metalik ve yumuşak tonlar. Banka seçince bankanın rengine yakın bir ton önerilir (logo kullanılmaz); formdaki küçük kart, hesabın nasıl görüneceğini gösterir.
- **Sürüm notları ve kullanım koşulları uygulamada:** Ayarlar › Hakkında › Sürüm notları GitHub'a gitmeden açılır; indirilmiş, kurulmayı bekleyen sürüm en üstte. Güncelleme penceresindeki **Tüm sürüm notları** da burayı açar. Kullanım koşulları kısa bir özet ve 13 başlıkla; içindekilerden istediğin başlığa atlarsın. İkisi de Yardım menüsünde.
- **Geri bildirim gönderildi:** gönderdikten sonra türüne göre bir teşekkür ve gönderdiğinin özeti görünür; kapatabilir ya da yeni bir geri bildirim yazabilirsin.

**Düzeltmeler**
- Kredi kartlarının üstündeki çip çok küçük görünüyordu.
- Windows'ta Alt tuşuna tek başına basınca pencere görünmez bir menü kipine geçiyor, sonraki tuşlar Ajandam'a ulaşmıyordu.
- Hesap formunda tür değişince kart görselinin rengi güncellenmiyordu.

## [3.3.2] – 2026-10-03

- **Geri bildirim doğrudan gelir:** Ayarlar › Hakkında › Geri bildirim gönder'de yazdıkların tek tıkla Ajandam'ın destek adresine (ajandamuygulamasi@gmail.com) gider; istersen yanıt alacağın e-posta adresini ve bir ekran görüntüsünü ekle. E-posta uygulamanla göndermek ya da metni kopyalamak da mümkün. Kayıtların eklenmez.
- **Güncelleme ilerlemesi:** yeni sürüm inerken üst çubukta yüzdesi, Ayarlar › Hakkında'da indirilen MB ve kalan süre görünür; doğrulanırken ve kurulurken ne olduğu yazar. Mac'te Ajandam Hakkında penceresinde de ilerleme çubuğu var.
- **Kart limiti her yerde:** kredi kartlarında limit ve kullanılabilir tutar hem Özet'teki hem Hesaplar'daki kartlarda görünür; Kart borçları kutusu toplam limiti ve kullanılabilir tutarı da söyler.
- **IBAN:** banka ve birikim hesabına IBAN'ı tam olarak yazabilirsin: yazarken dörtlü gruplanır, yapıştırınca boşluklar düzelir, yanlış bir rakamda uyarır, bankayı IBAN'dan tanıyıp kendisi seçer. Hesap ayrıntısında IBAN'ı tek tıkla kopyalarsın.
- **Animasyonlar:** Ayarlar › Görünüm › Animasyonlar: sisteme göre, her zaman ya da sade. Sade kipte de kısa solmalar ve bekleme simgeleri sürer.

**Düzeltmeler**
- **Windows bildirimleri gelmiyordu:** Windows, bir uygulamayı bildirim listesine ilk bildiriminden sonra ekler; Ajandam ise bu durumu "bildirimler kapalı" sanıp hiç bildirim planlamıyordu. Artık ilk açılışta bir tanıtım bildirimi gösterilir, Ajandam Windows'un bildirim listesine eklenir ve hatırlatmalar planlanır. Ayarlar › Bildirimler'deki **Deneme bildirimi gönder** ile hemen deneyebilirsin; bildirimler kapalıysa nedeni (yalnızca Ajandam için mi, bütün uygulamalar için mi, kuruluşun ilkesiyle mi) söylenir.
- **Windows'ta animasyonlar oynamıyordu:** Windows'un "Animasyon efektleri" kapalıyken (çoğu zaman "en iyi performans" ayarından) Ajandam bekleme simgeleri dahil bütün hareketleri durduruyordu. Artık bir kez söylenir ve istersen yalnızca Ajandam'da açarsın; kapalı kalırsa da solmalar ve bekleme simgeleri sürer.
- Büyük tutarlarda kutucuklar ve kartlar kayıyordu: tutar satır atlıyor, kutusundan taşıyor ya da sayarken genişleyip daralıyordu. Artık tutar önce küçülür, sığmazsa "₺13,8 milyar" diye kısalır (tamamı üzerine gelince görünür); sayarken genişlik zıplamaz. Kripto ve döviz formunda miktar büyüdükçe satırlar kaymaz, dar kartlarda limit satırı taşmaz.
- Banka hesabına IBAN elle eklenemiyordu (yalnızca döküm içe aktarınca geliyordu, çoğu zaman yıldızlı haliyle).
- Güncelleme inerken hiçbir ilerleme görünmüyordu; Şimdi güncelle'ye basınca Ajandam kapanana kadar bir şey olmuyormuş gibi duruyordu.
- Windows'ta e-postayla geri bildirim gönderirken metindeki boşluklar "+" olarak görünebiliyordu. Mac'te Ajandam kilitliyken Hakkında'daki Geri Bildirim Gönder GitHub'ı açıyordu; artık e-posta uygulamasını açar.

## [3.3.1] – 2026-10-03

- **Uygulama simgesini sen seç:** Ayarlar › Görünüm › Uygulama simgesi'nde dört simge var: Lacivert, Gece, Turuncu, Beyaz. Mac'te Dock'ta, Finder'da ve bildirimlerde; Windows'ta görev çubuğunda, Başlat menüsünde, masaüstü kısayolunda, bildirim alanında ve bildirimlerde seçtiğin görünür. Tercih yalnızca o bilgisayarda saklanır.
- **Simge her yerde net:** macOS 26'da Ajandam'ın simgesi gri bir karonun içinde küçük görünüyordu; artık yeni uygulamalar gibi cam kenarlı ve koyu, renkli, şeffaf simge stillerine uyar. Windows'ta görev çubuğunda, Alt+Tab'da ve bildirim alanında simge ekranın ölçeğine göre kendi boyutunda çizilmiş haliyle görünür, bulanıklaşmaz.
- **Yapay zeka uygulamalarının kendi simgeleri:** Ayarlar › Yapay zeka'da Claude, ChatGPT, Antigravity, LM Studio, Ollama, Cursor, VS Code ve diğerleri kendi simgeleriyle görünür; uygulama kurulu olmasa da.

**Düzeltmeler**
- Kripto, döviz ve altın hesabı eklerken miktarı yazınca değer hesaplanmıyordu: ilk kripto ya da döviz hesabında fiyatlar hiç alınmıyordu. Artık form açılınca fiyatlar alınır; yazdıkça her satırın ve toplamın TL karşılığı, güncel değer alanında da toplam görünür.
- Küçük kripto miktarları (ör. 0,00012345 BTC) iki haneye yuvarlanıyordu; artık 8 haneye kadar saklanır. "1.500" bin, "2,5" ve "0.0523" ondalık olarak okunur; okunamayan miktar satırda söylenir.
- Döviz ve altın hesabının değeri elle değişince "Bakiye düzeltmesi" diye kaydediliyordu (fon hesabında bildirim de öyle diyordu); artık kripto ve fondaki gibi "Değer güncellemesi", gelir-gider sayılmaz. Canlı fiyatlı hesaptan miktarları silince değeri kaybolmaz, alandaki tutar kalır.
- Genel hesabı kullanırken eklenen ilk fon hesabı Genel hesabın açılış tutarını üstleniyordu; artık bunu yalnızca ilk banka, nakit ya da birikim hesabı yapar. Yeni hesap formunda tür değişince ipucu ve önceden doldurulan tutar da ona göre değişir.
- **Windows'ta ilk açılış:** Ajandam ilk açılışta önce orta boy bir pencere gösterip sonra büyüyordu; artık doğrudan tam pencere açılır. Sonraki açılışlarda pencere son bıraktığın yerde ve boyutta, farklı ölçekli ikinci ekranda da doğru açılır; "Windows açılınca başlat" ile görev çubuğunda bekleyen pencere büyük haliyle geri gelir.
- Windows kapanırken ya da oturum kapatılırken son değişiklikler yazılmadan Ajandam kapanabiliyordu; artık bekleyen kayıtların yazılması beklenir (en çok 4 sn).
- Ajandam kapanırken ya da güncellenirken art arda yapılan son değişikliklerden biri yazılmadan kalabiliyordu.
- Özet'teki hızlı ekleme çubuğuna yazdığın metin, o sırada ekran yenilenirse (ör. bir önceki kayıt yazılınca) siliniyordu; Enter'a basınca hiçbir şey eklenmiyordu.
- Windows'ta açılışla aynı anda bir şey değişince bazı hatırlatmalar iki kez geliyor ya da hiç gelmiyordu.
- Windows'ta güncelleme arka planda kurulamayınca Ajandam yine de kapanabiliyordu; artık bildirim alanında açık kalır.
- Claude masaüstünün yeni sürümleri bağlanınca Ayarlar › Yapay zeka'da "Bağlandı" görünmüyordu (Claude başka bir uygulama sanılıyordu); artık Claude olarak görünür, eski kayıtlar da düzelir.
- VS Code, Cursor gibi uygulamaların yorum satırı içeren ayar dosyası "geçerli bir JSON dosyası değil" diye reddediliyordu; artık Ajandam eklenir, dosyanın eski hali yanında yedek olarak durur.
- Mac'te Ajandam İndirilenler'den (Uygulamalar klasörüne taşınmadan) çalışırken bir yapay zeka uygulamasına eklenince bağlantı sonradan bozuluyordu; artık önce Uygulamalar'a taşıman söylenir.
- Mac'te Ajandam açılırken gelen ve beklerken süresi dolan yapay zeka isteği sonradan yine de çalıştırılıyordu (aynı kayıt iki kez eklenebilirdi).
- Claude'daki Ajandam uzantısı yeniden kurulurken, yeni sürüm kurulmadan "eklendi" deniyordu.
- Mac'te kurulamayan güncellemenin hangi sürüm olduğu bir sonraki açılışta söylenmiyordu; pencere Dock'a küçültülmüşken güncelleme arka planda kurulmaz.

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
