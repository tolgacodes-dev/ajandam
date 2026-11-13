# Yenilikler

Ajandam'ın sürüm notları. Her sürümün ilk bölümü uygulama içindeki güncelleme penceresinde de gösterilir.
Sürüm numaraları [anlamsal sürümlemeye](https://semver.org/lang/tr/) uyar.

## [4.9.0] – 2026-11-13

Ajandam 4.9'da silinen kayıtlar 30 gün boyunca geri getirilebiliyor, hızlı ekleme "ödeyeceğim" diyen cümleyi gider yazmak yerine ödeme hatırlatması olarak öneriyor, bütçe bekleyen ödemeleri ayrı gösteriyor ve geri yüklemeden önce yedeğin içinde ne olduğu görünüyor. Özet net varlığınla açılıyor, cam görünümde yazılar daha okunur, telefonda Ayarlar yeniden düzenlendi. Para hesaplarında, ödemelerde, Ajanda'da ve yedekte bulunan kusurlar giderildi. Öne çıkanlar:

- **Son silinenler:** silinen işlem, ödeme, ajanda kaydı, borç ve hedef 30 gün bu cihazda durur; Ayarlar › Veriler ve yedek › Son silinenler'den bağlı kayıtlarıyla birlikte geri gelir. Öbür cihazda silindiği için eşitlemede silinen kayıt da orada durur.
- **Yazarak ödeme hatırlatması:** "Kirayı ayın 5'inde ödeyeceğim 12.000" ya da "elektrik faturasını ödemem lazım 800" gider yazmaz, bekleyen ödeme olarak önerilir; istersen tek tuşla gider olarak eklenir. Soru cümlesi ("Hangi karta 500 TL ödeyeyim?") kayıt oluşturmaz.
- **Bütçede bekleyen ödemeler:** kategori satırında harcanan, bekleyen ödeme ve bekleyenlerden sonra kalan ayrı görünür.
- **Bu yedekte ne var:** geri yüklemeden önce yedeğin tarihi, sürümü ve içindeki hesap, işlem, ödeme, ajanda kaydı, not ve ek sayıları bugünkü sayılarla yan yana.
- **İki kez ödenen ödeme uyarısı:** aynı ödeme iki cihazda "Ödendi" yapıldıysa Ajandam uyarır; hangi giderin kalacağını sen seçersin, hiçbir şey kendiliğinden silinmez.
- **Özet net varlıkla açılır:** birincil sayı net varlık, "bu ay kalan" ikinci; kart her genişlikte en üstte, telefonda ilk ekranda.
- **Daha okunur, daha kolay dokunulur:** cam görünümde ve hesap kartlarında yazı kontrastı arttı, dokunma yerleri büyüdü, bir ekranda tek vurgulu düğme var; pencere boyutu değişince açık kayıt ve yazdığın alan yerinde kalır.
- **Kaydedilmedi · Geri getir:** değişiklik varken kapanan form onay sormaz; bildirimdeki "Geri getir" formu yazdıklarınla birlikte geri açar.
- **Bildirimler:** bildirime dokununca ilgili kayıt açılır. "Bildirimlerde ayrıntılar" PIN olmadan da kapatılabilir; kapalıyken bildirim tutar ve ad yazmaz.
- **Ajanda:** gece yarısında biten etkinlik her yerde aynı görünür; hızlı eklemede süre yazılabilir ("23:00 1 saat", "90 dk").
- **Para hesapları daha doğru:** dövizli kayıtta yarım kuruş kayması, borca bağlı transferin silinmesi, art arda "Ödendi", kısmi ödemenin kalanı ve kapalı aydaki tutarsızlıklar giderildi.
- **Telefonda Ayarlar:** bölüm sayfası yeniden düzenlendi, "Son yedek" kendi düğmesi, arama yazım hatasını hoş görür.
- **Windows:** yedek ve ek dosyaları yazılırken elektrik kesilirse yarım dosya kalmaz.
- **Android:** yedek ve ek dosyaları yazılırken elektrik kesilirse yarım dosya kalmaz.

---

**Son silinenler**
- Silinen işlem (taksitleri ve bölünmüş parçalarıyla), ödeme, ajanda kaydı, borç ya da alacak (ödeme satırları ve bağlı transferleriyle), hedef (katkılarıyla) ve düzenli kayıt 30 gün durur. Ayarlar › Veriler ve yedek › Son silinenler: tarihe göre liste, arama, Geri getir, Kalıcı sil, Hepsini kalıcı sil. İşlemler'in "…" menüsünden de açılır. Önceden "Geri al" yalnızca birkaç saniye görünüyordu; sonrası için yedek gerekiyordu.
- Geri getirilen kayıt bağlı kayıtlarıyla gelir: ödeme ve gideri, borç ve transferi, hedef ve katkısı. Bakiye, borç kalanı, hedefte biriken ve bütçe silmeden önceki haline döner. Tek Geri al geri getirmeyi geri alır.
- Eşitlemede bir cihazdaki silme, öbür cihazda henüz eşitlenmemiş bir değişikliği de götürebiliyordu. Silinen içerik artık o cihazın Son silinenler'ine düşer ve bildirim söyler: "3 kayıt öbür cihazda silindiği için silindi · Son silinenler". Geri getirilen kayıt öbür cihazlara da döner.
- Kapatılmış aydaki kayıt geri gelmez (ay önce açılır); hesabı silinmiş kayıtta hesap sorulur; ödeme bu arada başka bir giderle ödendiyse eski gider ayrı gider olarak gelir.
- Geri gelen düzenli kayıt, silindiği sürede geçen dönemleri toplu üretmez; geri getirildiği güne düşen dönem üretilir.
- Son silinenler yalnızca bu cihazda durur: eşitlemeye, Yedek indir'e ve arşive girmez. Tüm verileri sil onu da siler; PIN kilidi açılmadan görünmez; tutarlar gizliyse gizlidir. Silinen kaydın eki, kayıt Son silinenler'den çıkana kadar silinmez.

**Hızlı ekleme ve Asistan**
- Gelecek zaman ve gereklilik cümlesi ("ödeyeceğim", "ödemem lazım", "yatırmam gerek") gider yazmaz: ön izleme "Ödeme hatırlatması" der, Tab ya da dokunuşla "Gider olarak ekle" seçilir. Geçmiş zaman cümlesi ("ödedim") gider kalır. Özet satırı, komut paleti, her yerden hızlı ekleme ve Asistan aynı sonucu verir.
- Aynı adda bekleyen ödeme varsa yenisi açılmaz: "Kira zaten Ödemeler'de" der ve ödemeyi açar. Başkasının ödemesi ("Ali kirayı ödeyecek 12000") kayıt oluşturmaz; bildirimden hatırlatma eklenebilir.
- Soru işareti, soru eki ("ödesem mi") ya da soru sözcüğü olan cümle kayıt olmaz: "Soru gibi: bir şey eklenmedi". İşyeri ve ürün adı soru sayılmaz ("Kim market 250").
- Yüklemi "iptal" olan cümle ("Market 250 iptal") gider yazmaz; "iptal ücreti 50" gider. "Kart ücreti 50", "otopark ücreti 40" maaş geliri sayılmaz.
- Süre yazılabilir: "23:00 1 saat", "90 dk", "yarım saat", "1 saat 30 dk".
- Asistan, soru ya da olumsuz cümlede para ekleyen bir işlem önermez.

**Bütçe ve ödemeler**
- Bütçede kategori satırı "₺900 harcandı · ₺500 bekleyen ödeme" der ve bekleyenlerden sonra kalanı gösterir. Bekleyen toplamı Ödemeler'deki "Bu ay ödenecek" ile aynıdır; bekleyen ödeme günü gelmeden harcanana yazılmaz. Dönem maaş gününden başlıyorsa satır dönemi söyler.
- Kısmi ödeme: 1.000 liranın 600'ü ödenip gider silinince hem 1.000'lik ödeme hem 400'lük kalan bekliyordu. Gideri silen bütün yollar aynı kuralı izler; bekleyen ile ödenenin toplamı her zaman ilk tutardır ve bildirim ne olduğunu söyler.
- İki kez ödenmiş ödeme: "Kira iki kez ödenmiş görünüyor" uyarısı bildirim şeridinde, Ödemeler satırında ve eşitleme bildiriminde çıkar. "Düzelt…" kalacak gideri sordurur (tek Geri al); "İkisi de doğru" uyarıyı kalıcı kapatır.
- Tam ödemenin gideri düzenlenince ödemenin ödenen tutarı ve günü de güncellenir: takvim, Ödemeler ve Raporlar aynı sayıyı verir.
- Tutarı tahmini olan ödeme bildirimden ya da Haftayı kapat'tan sormadan yazılmaz: "Ödendi" penceresi tutar seçili açılır.
- Aramada proje: komut paleti ve İşlemler araması proje adını tarar; kaydın projesi satırda görünür.

**Para**
- Dövizli kaydın TL karşılığı yarım kuruşu aşağı yuvarlayabiliyordu ve iade başka hesaplanıyordu. Kayıt, hesabın TL değeri, kart borcu, net varlık, iade, düzenli kayıt ve hızlı ekleme artık aynı kuruşu verir.
- Borca bağlı transfer İşlemler'den silinince ya da düzenlenince borç kaydındaki ödeme satırı da güncellenir; kapanmış borç yeniden açılır ve bildirim bunu söyler; tek Geri al ikisini birlikte getirir. Kalanı aşan tutar formda reddedilir.
- "Ödendi" art arda gelince (liste, pencere, bildirim düğmesi) tek gider yazılır.
- Tek taksit düzenlenince plan toplamı taksitlerin toplamından hesaplanır. Arşivlenmiş kartta borç kaldıkça "yalnız asgari ödendi" uyarısı da gelir (arşivli kart hiç sayılmıyordu).
- Kapatılmış ay: bağlı transferi kapalı aya düşen borç ödemesi, hedef katkısı, kişi silme ve harcama bölüşme yarım kayıt bırakmadan reddedilir; kapalı ayda açılmış borcun vadesi ve açıklaması düzenlenebilir.

**Ajanda**
- Ertesi günün 00:00'ında biten etkinlik her yerde aynı: ekranda bitiş "00:00", süre tam, takvim dosyasına aktarılıp geri alınınca kayıt aynı. Formda bitiş başlangıçtan önceyse ertesi gün sayılır ve "ertesi gün" notu görünür.
- Hafta görünümünde gece yarısını geçen kısa etkinlik iki günde de görünür. Sabah özeti ikinci sabah "dün 23:30–04:15" der.
- Bildirime dokununca ilgili ajanda kaydı ya da ödeme açılır. Ertelenen hatırlatma, kayıt başka güne taşındıysa gelmez.
- "Tüm seri" kaydırılınca "yapıldı" işaretleri doğru tekrarlarda kalır (yapılmamış tekrar yapılmış görünmez); tek Geri al eski hale döner.

**Yedek ve veriler**
- Yedekten geri yüklerken dosya seçilince yedeğin tarihi, sürümü ve içerik sayıları bugünkü sayılarla birlikte görünür. Boş yedek "Bu yedek boş" der; yedekteki her şey zaten varsa "yüklenecek bir şey yok". Şifreli yedekte özet şifre girildikten sonra görünür.
- 3.8, 4.2, 4.5 ve 4.7 yedeklerinden geri yükleme kayıt sayılarını, tutar toplamlarını, bakiyeleri, hedef katkılarını, borç ödemelerini, notları ve ekleri korur; yarıda kesilen geri yükleme toparlanır.
- Deneme kipine girerken yatırım geçmişi sıfırlanır (gerçek veriden iz kalıyordu).
- Kayıtlar okunamadığında Hesaplar'a dokunmak hiçbir şey yapmıyordu; artık açılır.

**Ayarlar**
- Telefon bilgisayarla eşleşmişken kart "yalnızca bu telefonda" demez: "Kayıtların bu telefonda; ‹bilgisayar› ile eşitlenir". Karttaki "Son yedek" ayrı düğme: Veriler ve yedek'i yedek satırları başta açar.
- Arama: "yedek" yazınca yedek işlemleri önde gelir; "yedekle", "yedekten" aynı kökten bulunur; dört ve üstü harfli aramada bir harflik yazım hatası hoş görülür ("yedk", "bildrim"). "Tüm verileri sil" yalnızca kendi sözcükleriyle çıkar. Arama sonucuna girip geri dönünce arama ve kaydırma yeri korunur.
- "Yedeğe dön", Fiyat uyarıları ve Takvime aktar pencereleri Ayarlar'ı kapatmaz.
- "Bildirimlerde ayrıntılar" PIN olmadan da görünür. Kapalıyken sabah özeti, ödeme ve ajanda bildirimleri tutar ve ad yazmaz ("2 ödeme yaklaşıyor").
- Bildirim izni kapalıyken uyarı açıklamanın başında görünür.

**Görünüm ve erişilebilirlik**
- Özet: birincil sayı net varlık, "bu ay kalan" ikinci. Kart varsayılan düzende bildirim şeritlerinin üstünde; geniş ekranda üç kutucuk yan yana. Kendi düzenini kurduysan sıran değişmez.
- Cam görünümde yazı her zeminde okunur (kontrast en az 4,5:1); saydamlığı desteklemeyen ortamda ve Düz görünümde yüzeyler opak.
- Hesap kartlarının üstündeki yazılar (banka adı, bakiye, son dört hane) her kart yüzeyinde ve iki temada okunur; cam kartta yazı açık temada koyu.
- Bir ekranda tek vurgulu düğme: bölüm başlığındaki ve satırdaki düğmeler sade, boş ekranın tek eylemi vurgulu. Boş Hesaplar ve boş Raporlar ne yapılacağını söyler.
- Pencere boyutu değişince açık kayıt, kaydırma yeri ve yazdığın alan korunur; iki bölmeden tek bölmeye geçince seçim kalır.
- Değişiklik varken kapanan form "Kaydedilmedi · Geri getir" bildirimiyle geri açılır. Kayıt yazılamadıysa "eklendi" bildirimi kapanır.
- Notlarda açık temada vurgu renkli yazı daha okunur; taşan kod ve tablo klavyeyle kaydırılır; gecikmiş kayıtlar renk dışında da işaretli; hafta çiplerinin adı ve durumu ekran okuyucuda okunur.
- %200 yakınlaştırmada ve 320 piksel genişlikte yazı kırpılmaz. Büyük yazıda dokuz haneli tutar "…" ile kesilmez, "₺126 milyon" diye kısalır.

**Telefon ve tablet**
- Ayarlar'da bölüm sayfası yeniden düzenlendi: üstte geri ve "Bitti" aynı hizada, denetimler tam genişlikte, uzun açıklama "Daha fazla" ile açılır, en büyük yazıda kırpılan metin yok.
- Dokunma yerleri büyüdü: en küçük düğme de parmak ucu kadar.
- Özet'in başlığı telefonda sıkışır; net varlık ilk ekranda.
- Yan tutulan telefonda iki bölme açılmaz.

**Windows**
- Yedek ve ek dosyaları yerine konmadan önce diske işlenir; kesintiden kalan yarım dosya açılışta temizlenir, yarım kalan ek yeniden istenince onarılır.

**Android**
- Yedek ve ek dosyaları yerine konmadan önce diske işlenir; kesintiden kalan yarım dosya açılışta temizlenir, yarım kalan ek yeniden istenince onarılır.
- Yerel ağ izni açıklaması Android'in ayar yolunu gösterir.

## [4.8.0] – 2026-11-10

Ajandam 4.8 bir kararlılık sürümü: yeni özellik yok. 4.7'de görülen kusurlar giderildi ve birkaç görünüm iyileştirildi. Hesap kartları daha okunur ve hesapları daha doğru, eşitleme ve yedek daha sağlam, hızlı ekleme saatleri ve tarihleri daha doğru anlıyor. Öne çıkanlar:

- **Hesap kartları daha okunur:** Otomatik görünüm artık her yerde Cüzdan (yalnızca yan tutulan telefonda Yatay kart). Destede borç, fazla ödeme ve arşiv yazıyla belli; kartın arkasında "Asgari ödeme (%40)" ve son ödeme geçmişse "gecikti" yazar. Banka adıyla hesabın adı aynıysa kartta bir kez yazılır. Ödeme penceresinin başlığı "Kart borcunu öde".
- **Kart hesapları daha doğru:** limit kullanımı yüzdesi her yerde aşağı yuvarlanır (%80 uyarısı artık zamanında çıkar); iade edilen taksitli alışveriş kartı dolu göstermez; dövizli kartta limit, son ödeme ve asgari ödeme kartın kendi para biriminden okunur; tutarlar gizliyken IBAN da gizlenir.
- **Eşitlemede ve yedekte kayıp yok:** saati geri olan cihazdaki not değişikliği ezilmez; iki cihazda eklenen hedef katkısı ve borç ödemesi ikisi de kalır; geri alınan değişiklik yeniden yazılır; yavaş Wi-Fi'de büyük yedek her seferinde baştan başlamaz; yedekten dönünce kapatılan aylar gelir; eşleşme dosyası elektrik kesintisinde bozulmaz.
- **Hızlı ekleme ve takvim daha doğru:** "her ayın 31'i" kısa aylarda ayı atlamaz; geçmişe düşen saat gelecek haftaya yazılır; "gece 12" ve "23:00-01:00" gibi gece yarısını geçen aralık doğru okunur; yaz saatli takvim dosyalarındaki tekrarlar kaymaz.
- **Görünüm düzeltmeleri:** Asistan'da uzun bağlantı ekranı taşırmaz; grafiklerin eksen yazıları üst üste binmez; çok büyük tutarlar Özet'te ve Borçlar'da taşmaz; notta liste maddesi kırılınca ikinci satır yazının hizasından başlar.
- **Telefonda ve tablette:** küçük dokunma yerleri büyüdü (sekme kapatma, "tüm gün" çipleri, bütçe önerileri); yan tutulan telefonda İşlemler'in süzgeçleri katlanır; Ajanda'nın görünüm seçimi büyük yazıda ekrana sığar.
- **iPhone:** Asistan formlar gibi alttan, orta yükseklikte açılır; yazı alanına dokununca ya da soru gönderince büyür. Pencere açılırken arkadaki sayfa kıpırdamaz; pencerenin zemini ekranın altına kadar iner.
- **Mac:** ekstre ve döküm içe aktarma penceresi tam boyda açılır (önceden gövdesi küçülüyordu).
- **iPad:** ekstre ve döküm içe aktarma penceresi tam boyda açılır; dikeyde hesap kartı ekranı kaplamaz.
- **Android:** aynı günün sabah özeti birkaç kez gelmez; Tüm verileri sil, ekrandaki bildirimleri de kaldırır; birden çok dosya paylaşımı daha sağlam.

---

**Hesaplar**
- Otomatik görünüm: yalnızca yan tutulan telefonda Yatay kart; başka her durumda Cüzdan (tablette ve dar bilgisayar penceresinde de). Dik tutulan küçük telefonda Otomatik artık ekranın yarısını kaplayan dikey kartı açmaz; Dikey kart seçenek olarak duruyor.
- Kartın yüzünde aynı yazı iki kez görünmez: banka adı yoksa üstte hesabın adı, alttaki ad yalnızca farklıysa yazılır. Uzun hesap adı Cüzdan'da bakiyeyi kartın dışına itmez.
- Cüzdan'da borç türündeki hesabın tutarı "borç", fazla ödeme "fazla ödeme +" etiketiyle yazılır; arşivlenmiş hesapta yazılı "arşiv" etiketi var; hesap ve kart sayıları yalnızca etkin hesapları sayar. 12'den çok hesapta sayfa noktaları yerine "3 / 38" sayacı.
- Kartın arkasında "Asgari ödeme (%40)"; son ödeme geçmişse kartın notunda ve arkasında "gecikti". Kartın altındaki not her genişlikte "kullanılabilir" der ("kalan" ekstre borcuyla karışıyordu); sığmazsa iki satıra iner, tutar kırpılmaz. Dikey kartın arkasında satırlar kartın yüksekliğine yayılır.
- Kart durumunda "Fazla ödeme" satırı; üst satır öbekler arasından kırılır, "1 gecikmiş" ortadan bölünmez. Hesabın kendi işlem listesinde hesabın adı yinelenmez.
- Kartın parlaması azaldı: açık renkli kartlarda yazı daha okunur.
- Hesap kartı olması gerekenden uzun çiziliyordu: Cüzdan destesinde kartların aralığı ve bütün görünümlerde kartın oranı düzeldi; geniş ekranda tek sütunlu Cüzdan'daki ve hesap sayfasındaki kart ortalı ve gerçek kart oranında.

**Para**
- Kullanım yüzdesi her yerde aşağı yuvarlanır: %79,6'da kart "%80" diyor ama %80 uyarısı çıkmıyordu.
- İade edilen taksitli alışveriş fazla ödeme sayılmıyor, kart dolu görünüyor ve limit uyarısı veriyordu; fazla ödeme artık kullanımdan düşer ve kullanılabilir limite eklenir.
- Kuru bilinmeyen dövizli kartta limit girilmişken "limitini gir" yazmaz; son ödeme tarihi ve ekstre kalanı kartın kendi para biriminden okunur. Dövizli kartta asgari ödeme ₺ işaretiyle yazılmaz.
- Asgari ödeme: ilk ayın faiz kademesi dönem borcundan alınır (pencere ve Asistan aynı hesabı kullanır); ödenmiş ekstrede asgari ödeme istenmez; faiz kademesi yazısı oranla çelişmez.
- Tutarlar gizliyken hesap ayrıntısında ve kopyalama bildiriminde IBAN maskelenir.

**Eşitleme ve yedek**
- Açık notta, saati geri olan cihazdan gelen değişiklik sessizce eziliyordu: birleştirme artık zamana değil, o sürümün görülüp görülmediğine bakar. Saati geri olan cihazda silinen kayıt öbür cihazdan geri gelmez.
- İki cihazda aynı hedefe katkı ya da aynı borca ödeme eklenince biri kayboluyor, bağlı transferi ise geliyordu: bu alt kayıtlar artık kimliğe göre birleşir.
- Eski haline döndürülen değişiklik eşitlemede ezilmez. Bir cihazda değişip öbürüne giden kayıt orada yeniden değişince her eşitlemede yersiz çakışma sorulmaz. Silinen düzenli tekrar, öbür cihaz yeniden üretince geri gelmez.
- Wi-Fi oturumunun süresi son iletiden sayılır: yavaş bağlantıda büyük yedek her oturumda baştan başlıyor, hiç bitmiyordu.
- Eşitleme sürerken deneme kipine geçilirse öbür cihazın kayıtları örneklerin arasına girmez.
- Yedekten geri yüklemede ve karekodla aktarımda ay başlangıcı ile kapatılan aylar gelir; Geri al önce kapanışı geri alır.
- Eşleşme dosyası güvenli yazılır; okunamayan dosya silinmez, kenara alınır. Elektrik kesintisinden sonra bütün eşleşmeler gidebiliyordu.

**Hızlı ekleme ve takvim**
- "Her ayın 31'i" ve "ayın son günü" kısa ayda bu ayı atlıyordu: seri bu ayın son gününden başlar, 31 günlü ayda 31'inde çıkar. Düzenli kayıt formu günü her kaydedişte 30'a kaydırmaz.
- Pazartesi 10:00'da "pazartesi 9:00 toplantı" geçmişe yazılmaz, gelecek haftaya yazılır. Tarihsiz "gece 12" yarının 00:00'ı olur.
- "23:00-01:00", "nöbet 20-8": saat okunuyor, bitiş ertesi güne düşer (önceden kayıt tüm gün oluyordu).
- "Öğleden sonra 3 toplantı" 3 TL gider olmaz. Olumsuz cümle kuralı ad içindeki sözcükleri reddetmez ("Çıkmaz Sokak kafe 250").
- Belgeden okuma: "8:30 PM" sabaha düşmez; kuruşsuz tutarlar okunur.
- Yaz saati olan bölgeden ya da başka saat diliminden gelen tekrarlı takvim etkinliği doğru güne ve saate düşer; yılın yarısında bir saat kaymaz.

**Görünüm**
- Asistan: cevaptaki uzun bağlantı ekranın dışına itmez, uzun sözcük ve sayı sarar.
- Ekstre içe aktarmada ve notta küçük seçim kutusu yazıyla büyür.
- Raporlar'da eksen yazıları üst üste binmez; seçili ay küçük çıkmaz.
- Çok büyük tutarlar Özet'te ve Borçlar'da taşmaz. Notta liste maddesi kırılınca ikinci satır yazının hizasından başlar.

**Telefon ve tablet**
- Dokunmatikte sekme kapatma, "tüm gün" çipleri, bütçe önerileri ve Özet satır başlıkları en az 44 piksellik dokunma alanı. Kartın "Arkası" ve geri düğmeleri büyüdü.
- Yan tutulan telefonda İşlemler'in süzgeçleri katlanır (ilk ekranda kayıt görünmüyordu); sekme şeridi ve durum çubuğu içeriğe yer bırakır.
- Ajanda'nın görünüm seçimi büyük yazıda ekranın dışına taşmaz; seçim kendi içinde yana kayar.
- Notun biçim araç çubuğu kesilmez; dar telefonlarda "⋯" düğmesi ikinci satıra düşmez.
- Bağlantı düğmeleri vurgu renginde; ekstre geçmişi tablosu dar ekrana sığar.

**iPhone ve iPad**
- Asistan iPhone'da alttan, orta yükseklikte açılır; klavye kendiliğinden açılmaz, yazı alanına dokununca, konuşma kaydırılınca ya da soru gönderilince büyür. Yapay zekanın adı tek satırda; "Yeni sohbet" dar ekranda yalnızca simge. Apple Intelligence hazır olduktan sonra Asistan "yapay zeka yok" demez.
- Pencere açılırken arkadaki sayfa kıpırdamaz: art arda açılan pencerelerde ve sayfa görünmezken açılanlarda da (Ara, "Yazarak ekle", kestirme).
- Pencerenin zemini ekranın altına kadar iner; düğmeler ev göstergesinin alanına inmez, pencere erken bitmez. iPad'de klavye açıkken ortadaki pencere klavyenin üstünde.
- Kilitlenince ChatGPT ile giriş sayfası açık kalır, giriş yarıda kesilmez; süren "Dosyalar'a kaydet" ve klasör seçimi vazgeçildi sayılır.
- Pencere açıkken kilitlenince kilit açıldığında sayfa boş kalmaz. Kilitliyken basılan bildirim düğmelerinden hepsi yapılır (yalnızca sonuncusu yapılıyordu).
- Ekstre ve döküm içe aktarma penceresi iPad'de tam boyda açılır. iPad dikeyde hesap kartı ekranı kaplamaz. Asistan'ın konuşması sonuna yapışık: son mesaj yazı alanının altında yarım kalmaz.
- Kamera ve yerel ağ izin açıklamaları Wi-Fi'de eşitlemeyi de söyler.

**Mac**
- Ekstre ve döküm içe aktarma penceresinin içi küçülüp boş görünüyordu: pencere artık içeriğine göre açılır.
- Pencere açıkken kilitlenince kilit açıldığında sayfa boş kalmaz. Kilitliyken basılan bildirim düğmelerinden hepsi yapılır.
- Asistan'ın konuşması sonuna yapışık: son mesaj yazı alanının altında yarım kalmaz; yukarı kaydırınca bırakılır.
- Kamera ve yerel ağ izin açıklamaları Wi-Fi'de eşitlemeyi de söyler.

**Android**
- Aynı günün sabah özetinin birkaç sürümü aynı anda gelebiliyordu: içeriği değişen bildirim artık eskisinin yerine geçer, vakti çoktan geçmiş eski bildirimler gelmez.
- Tüm verileri sil, kayıtlarla birlikte kurulu hatırlatmaları ve bildirim alanındaki bildirimleri de kaldırır. 4.7'den kalan eski bildirimler 4.8 ilk açıldığında temizlenir.
- Ajandam'a birlikte paylaşılan çok sayıda dosya daha güvenilir alınır.

## [4.7.0] – 2026-11-08

Ajandam 4.7'de telefon ve bilgisayar aynı Wi-Fi'deyken bulut klasörü olmadan birbirine doğrudan bağlanıp eşitleniyor. Hesap kartların gerçek kart gibi görünüyor: çip, güvenlik deseni, yüzey ve arkası; Cüzdan görünümünde üst üste. Afişin, biletin ya da faturanın fotoğrafından etkinlik ve ödeme ekleniyor. Ajanda'ya yıl görünümü, okul takvimi ve geri sayım geldi; harcama yapmadığın günler sayılıyor; kart limitinin ne kadarını kullandığın ve yıllık kart ücretinin ne zaman geleceği söyleniyor. Öne çıkanlar:

- **Wi-Fi'de eşitleme:** eşleştirdiğin cihazlar aynı ağdayken birbirine doğrudan ve uçtan uca şifreli bağlanıp kayıtlarını ve eklerini birleştirir; bulut klasörü gerekmez. Bilgisayarda Ayarlar › Veriler ve yedek › Wi-Fi'de eşitleme › Cihaz eşleştir… karekod gösterir, telefon bir kez okutur; sonra telefon Ajandam'ı açınca ve öne gelince eşitlenir.
- **Gerçek kart gibi hesap kartları:** banka ve tür, çip, güvenlik deseni, son 4 hane ve kart ağı yazısı; yüzey parlak, mat, metal ya da cam. Kredi kartında kullanım şeridi; seçili kartın Arkası'nda kesim, son ödeme, limit, IBAN. Görünümler: Yatay kart, Cüzdan (üst üste) ve Dikey kart; Otomatik ekrana ve tutuşa göre seçer.
- **Fotoğraftan etkinlik ve ödeme:** afişin, biletin, randevu mesajının ya da faturanın fotoğrafından (fiş okuyabilen cihazlarda) ya da PDF'inden etkinlik ya da ödeme penceresi dolu açılır: gün, saat, başlık, yer; son ödeme günü, tutar ve kurum. Kaydetmeden hiçbir şey eklenmez, fotoğraf hiçbir yere gönderilmez.
- **Ajanda › Yıl:** yılın 12 ayı tek sayfada; etkinlik, yapılacak ve ödeme günleri noktalı, tatiller renkli, harcamasız günler işaretli; üstte yılın özeti, altta resmî tatillerin listesi.
- **Okul takvimi:** Millî Eğitim Bakanlığının 2026–2027 çalışma takvimi (okulların açılışı, ara tatiller, yarıyıl, karne günleri) Ajanda'da isteğe bağlı katman; Ajandama kopyala ile hatırlatma eklenir.
- **Geri sayım:** etkinliğe ya da yapılacağa "Özet'te geri sayım göster" de: Özet'te kalan gün sayısıyla kart.
- **Harcamasız günler:** bu dönemde harcama yapmadığın günler, süren seri ve en uzun seri Özet'te; pencerede dönemin takvimi ve aylık hedef; Ajanda'nın ay görünümünde işaret.
- **Limit kullanımı ve kesimden önce ödeme:** kart durumunda limitin yüzde kaçının kullanıldığı; hesap kesimine 7 gün kala kullanımı %30'a indirecek tutar ve "₺X öde" düğmesi.
- **Yıllık kart ücreti:** kart ücreti kayıtlarından anlaşılır ya da kart formuna yazılır; 30 ve 7 gün önce sabah özetinde hatırlatılır, kart durumunda sonraki ücretin günü ve ücretsiz karta geçme hakkın.
- **Hızlı ekleme daha dikkatli:** "500 TL harcama yapmadım" gibi olumsuz cümle kayıt eklemez; "Ali bana 50 borçlu", "Ayşe'ye 300 borcum var" gider değil, Borç ve alacak penceresi dolu açılır.
- **Asistan aynı kaydı iki kez önermez:** aynı mesajdan çıkan aynı kayıt bir kez önerilir, aynı arama bir kez yapılır; bağlı yapay zeka uygulamaları da onay bekleyen kaydı yeniden ekleyemez.
- **Dokunmatikte vurgu kalmaz:** dokunulan düğme, kart ya da satır parmağını çekince vurgulu kalmaz.
- **Daha sağlam birleştirme:** silme izi yazılamayan yedek birleşmiş sayılmaz; yeni sürümün yedeğindeki alanlar eski sürüme geçişte kaybolmaz.
- **iPhone ve iPad:** gider, gelir, etkinlik gibi formlar iPhone'da alttan, orta yükseklikte açılır; yukarı çekince büyür, aşağı çekince kapanır; klavye açılınca pencere klavyenin üstüne oturur. Belge tara açılırken çökmüyor; faturanın karekodu daha iyi okunuyor.
- **Android:** Kamera uygulamasıyla okunan eşleştirme karekodu Ajandam'ı açar; faturanın yoğun karekodu da okunur.

---

**Wi-Fi'de eşitleme**
- Eşleştirme: bilgisayarda Ayarlar › Veriler ve yedek › Wi-Fi'de eşitleme › Cihaz eşleştir… karekod gösterir; telefonda Bilgisayarla eşleştir… karekodu okutur. Bir telefon birden çok bilgisayarla eşleşebilir; eşleşen cihazlar listede, istenince kaldırılır. Karekod tek kullanımlıktır; yalnızca yerel ağ adresleri kabul edilir.
- Ne zaman: bilgisayar Ajandam açıkken dinler; telefon Ajandam'ı açınca, öne gelince ve Şimdi eşitle'de eşleşen bilgisayarlara sırayla bağlanır. Kayıtlar yalnızca iki cihaz arasında, uçtan uca şifreli gider; hiçbir sunucudan geçmez. Kilitli cihaz eşitlenmez.
- Birleştirme kendiliğinden eşitlemedeki gibi: iki cihazda da değişen kayıt, çok silme ya da daha yeni sürümün yedeği Özet'te şeritte sorulur; İncele… ile bakar, Sonra ile ertelersin. Eksik ekler de alınır.
- Dışarıdan gelen eşleştirme bağlantısı (başka uygulamadan, tarayıcıdan) önce sorulur: Eşleştir'e basmadan bağlanılmaz. Tüm verileri sil eşleşmeleri de kaldırır.
- **Mac:** menü çubuğunda açıkken pencere kapalı da dinler.
- **iPhone ve iPad:** ilk bağlanışta yerel ağ izni sorulur; izin verilince bağlantı beklemeden kurulur.
- **Android:** Kamera uygulamasıyla okunan eşleştirme karekodu Ajandam'ı açar.

**Hesaplar**
- Kartın yüzü: üstte banka ve tür, kredi kartında ve banka hesabında çip, öbür hesaplarda türün filigranı; ortada etiket ve tutar; altta hesabın adı ve son 4 hane. Kart ağı (Visa, Mastercard, Troy, American Express) düz yazıyla; dövizli hesapta para birimi. Arkada güvenlik deseni, her kartta başka bir parçası.
- Yüzey: parlak (varsayılan), mat, metal ya da cam; hesap formunda Yüzey ve Kart ağı, önizleme kartın kendisi. Kartın tam numarası, son kullanma tarihi ve güvenlik kodu hiçbir zaman istenmez.
- Kredi kartında ve ek hesapta altta kullanım şeridi: %30'dan sarı, %70'ten kırmızı. Kartın altındaki notta kredi kartında kullanılabilir tutar ve son ödeme, ek hesapta kalan, dövizde ve altında canlı fiyat, kredide taksit.
- Arkası: seçili kredi kartında ve banka hesabında kart döner; manyetik şerit, imza bandında hesabın adı; kredi kartında hesap kesimi, son ödeme, limit, kullanılabilir, kullanım ve asgari ödeme; bankada IBAN (tutarlar gizliyken maskeli) ve ek hesap.
- Görünümler: Yatay kart (ızgara), Cüzdan (üst üste; seçili kart açık, genişte yanında hesabın ayrıntısı, darda dokununca hesabın sayfası) ve Dikey kart. Otomatik: geniş ekranda Cüzdan, dar ekranda yan tutuşta Yatay, dik tutuşta Dikey. Hesaplar'ın başlığından, Ayarlar › Görünüm › Hesap kartları'ndan ya da komut paletinden sabitlenir.
- Dar ekranda Yatay ve Dikey kaydırılan şerit: ortadaki kart seçili, altında noktalar; Özet'te yatay şerit.
- Kart durumu: "Limit ₺X · kullanım %N" ve çubuk; kesime 7 gün kala kullanım %30 ya da üstündeyse "Kesimden önce ₺X ödersen limit kullanımı %30 olur; sonraki ekstre de o kadar az gelir" ve "₺X öde" (ödeme penceresi o tutarla açılır). Limit uyarısı %80'de.
- Yıllık kart ücreti: kartın "yıllık kart ücreti", "kart aidatı" gibi gider kaydından anlaşılır ya da kart formunda Yıllık kart ücreti ve Son alındığı tarih yazılır; sonraki ücret bir yıl sonra. 30 ve 7 gün önce sabah özetinde ("İstemiyorsan bankandan ücretsiz karta geçmeyi iste"), sabah özeti kapalıysa ayrı bildirim; Ayarlar › Bildirimler › Kart ücreti hatırlatması. Kart durumunda sonraki ve son ücret; 30 gün kala hakların: bankalar yıllık ücret almadığı bir kart sunmak zorunda, ücret artışı en az 30 gün önce bildirilir ve 15 gün içinde vazgeçilebilir.

**Ajanda**
- Yıl görünümü: Ajanda'nın dördüncü görünümü. Her ay küçük takvim; günlerde etkinlik, yapılacak ve ödeme noktaları (gecikmiş ödeme kırmızı), takvim katmanlarının olayları kendi renginde; resmî tatiller ve arifeler renkli, bugün ve seçili gün işaretli, harcamasız günler halkalı. Ayın adı o ayı, gün o günü açar. Üstte yılın özeti (etkinlik, yapılacak, ödeme ve tatil günü sayısı), altta lejant ve tatillerin listesi; oklar bir yıl, "Bu yıl" bugüne.
- Okul takvimi: uyum eğitimi, okulların açıldığı gün, ara tatiller, dönem sonu ve karne, yarıyıl tatili, ikinci dönem ve ders yılı sonu (2026–2027). Ay ve hafta görünümünde şerit ve çip, Liste'de ve gün panelinde satır; olayın penceresinde tatilin süresi ve Ajandama kopyala (kopyalanana hatırlatma ve geri sayım eklenir). Açmak için Ajanda'nın çip satırında "+ Okul takvimi", Ayarlar › Takvim ya da komut paleti. Sonraki ders yılları güncelleme beklemeden gelir.
- Geri sayım: etkinlik ve yapılacak formunda "Özet'te geri sayım göster"; Özet'te Geri sayım bölümü, en çok dört kart, en yakını önde ("Bugün", "Yarın", "12 gün", çok günlüde "Sürüyor"); tekrarlayanda sıradaki tekrar. Kart o günün kaydını açar; işaretli kayıt yokken bölüm görünmez.
- Fotoğraftan etkinlik: yeni Etkinlik penceresinin başında Fotoğraftan doldur (fiş okuyabilen cihazlarda; PDF her yerde); "+" menüsünde Fotoğraftan etkinlik ya da ödeme ve komut paletinde. Gün ve aralık ("28 Kasım – 2 Aralık"), saat (kapı açılışı değil), başlık (afişte en büyük yazı, randevuda doktor), yer. Açık pencerede yalnızca boş alanlar yazılır.
- Paylaşılan uzun randevu ya da fatura mesajı hızlı eklemede "Etkinlik ekle: …" / "Ödeme ekle: …" satırıyla pencereyi dolu açar.

**Para**
- Harcamasız günler: bugünkü harcama payının altında satır; pencerede dönemin kutuları ve takvimi, aylık hedef (1–31 gün), "Ajanda'nın ay görünümünde işaretle" ve "Özet'te gösterme". Düzenli giderler, bekleyen ödemeler, abonelik çekimleri, taksitlerin ilkinden sonrakiler, kredi faizi, transfer ve iade harcama sayılmaz. Ayarlar › Görünüm › Harcamasız günler.
- Faturadan ödeme: Yeni ödeme penceresinin başında Faturadan doldur; eklenen faturaya da öneri. Son ödeme günü, ödenecek tutar (KDV, asgari ve gecikme değil) ve kurum (elektrik, doğal gaz, su, internet, telefon, aidat, sigorta kategorisiyle); faturanın görüntüsü ödemenin eki olur.
- Fiş ya da fatura eklerken faturanın karekodu da okunur; karekod varsa tahmin yerine karekoddaki tutar ve tarih yazılır. Biçimi kılavuzdan sapan e-Arşiv karekodları da okunur.

**Hızlı ekleme ve Asistan**
- "500 TL harcama yapmadım", "fatura ödenmedi" gibi olumsuz cümle kayıt eklemez, nedeni söylenir. "Alacağım var", "Ali bana 50 borçlu", "Ayşe'ye 300 borcum var", "borç aldım": gider değil, Borç ve alacak penceresi yön, tutar, kişi ve tarihle açılır. Her yerden hızlı ekleme, Özet'in kutusu, komut paleti ve Yazarak ekle'de.
- Asistan aynı mesajdan çıkan aynı kaydı iki kez önermez (bilgisi çok olan kalır), aynı aramayı bir kez yapar; modelin "Diğer" dediği kategori açıklamadan anlaşılıyorsa o yazılır; "bugün", "dün", "yarın" bugüne göre.
- Bağlı yapay zeka uygulamaları: aynı kaydı ekleyen ikinci istek onay beklerken yeni öneri açmaz, bekleyen öneri söylenir.

**iPhone ve iPad**
- iPhone'da formlar alttan: gider, gelir, transfer, ödeme, etkinlik, yapılacak, hesap gibi pencereler orta yükseklikte açılır; tutamaçtan ya da gövdeden yukarı çekince ve yazı alanına dokununca büyür, aşağı çekince ortaya iner ya da kapanır, az çekilince yerine döner. Klavye açılınca pencere klavyenin üstüne oturur, odaktaki alan görünür kalır. Üç ya da daha çok düğmede Kaydet üstte tam genişlikte. Onaylar ortada kart; Ayarlar ve formsuz pencereler tam ekran.
- Belge tara açılırken çökmüyor.
- Karekodu okut: satıcının numarası olmayan karekod atlanır ve "faturanın karekodu değil" denir; yoğun karekod da okunur, dokunulan her durumda okunur. Fiş fotoğrafı ve taranan belge karekodu da okur.

**Android**
- Faturanın yoğun karekodu da okunur; okunan fatura değilse ne okunduğu ve Yeniden okut.

**Telefon ve tablet**
- Dokunulan düğme, kart ya da satır parmağını çekince vurgulu kalmaz; fare ve iz yüzeyinde vurgu eskisi gibi.
- Dokunmatik klavyede Enter'ın adı yerine göre: komut paletinde "git", Yazarak ekle'de "bitti", Ayarlarda ara'da "ara", Asistan'da "gönder".
- Bankadan gelen bildirimin kimliği kaydedilen işlemde: kuyruktan silinemeyen bildirim yeniden açılışta gösterilmez; eski listeden Ekle, Düzenle ya da formdan kaydetme aynı harcamayı ikinci kez yazmaz.

**Yedek ve birleştirme**
- Bunu birleştir… ve karekodla aktarım: yalnızca silme izi getiren yedeğin izleri yazılamazsa yedek birleştirilmiş sayılmaz, neden ve Yeniden dene gösterilir; önceden üçüncü cihazın yedeğinden silinmiş kayıt geri gelebiliyordu.
- Sürümler arası: gelen kayıtta hiç olmayan alan buradaki hâlinden kalır; yeni sürümün yedeğini alan eski sürüm alanları saklar. Seçerek geri yükle seçilen hâli olduğu gibi getirir.

**Düzeltmeler**
- Hızlı eklemede olumsuz cümleler ve borç–alacak cümleleri gider olarak yazılıyordu.
- Fiş ya da fatura eklerken "tutar bulunamadı" yalnızca karekod da okunamayınca söylenir.
- **Android:** eşit aralıklı yazıdaki tutarlarda ₺ işareti kutucuk olarak görünüyordu.

## [4.6.0] – 2026-11-07

Ajandam 4.6'da Ayarlar yeni penceresinde açılıyor; notlar tarihe göre gruplanıyor ve yazarken biçimleniyor. Ajanda'ya projeler ve bir kayıt için birden fazla hatırlatma geldi; Özet'in bölümlerini istediğin gibi düzenliyorsun. Nakit akışının senaryoları adıyla kaydediliyor, borç kapatma planı ay ay ödeme planı veriyor ve harcayacağın tutara hangi kartın limitinin yettiğini Ajandam söylüyor. Tabletin ve katlanabilir telefonun geniş ekranında Ajanda, Notlar ve İşlemler iki bölmeli, katlayınca bölmeler katlama çizgisinden ayrılıyor. Yedekten geri yükleme ve birleştirme yarıda kalsa da kayıtların değişmiyor. Öne çıkanlar:

- **Yeni Ayarlar penceresi:** bilgisayarda ve tablette Ayarlar ortada bir pencerede açılır: solda arama ve bölümler, sağda seçili bölüm. Ayarlar'dan açılan pencereler onun üstünde açılır; kapatınca Ayarlar kaldığın yerde.
- **Notlar'da yeni liste:** notlar Bugün, Dün, Önceki 7 gün gibi gruplarda; her satırda özet, klasör, yapılacakların ilerlemesi, ekler ve etiketler. Aramada aranan sözcük işaretli.
- **Yazarken biçimlenen notlar:** başlıklar büyük; kalın, vurgulu ve üstü çizili yazı yazdığın anda öyle görünür, yapılacak kutusu doğrudan işaretlenir. Biçim işaretleri (#, ** gibi) yalnızca imleç üstlerindeyken çıkar. İstersen notun ⋯ menüsünden klasik düzenleyiciye dönersin.
- **Tutar tablosu ve komutlar:** son satırı "Toplam" olan tablo kendiliğinden toplanır ve birikim hedefine bağlanır. Satırın başında / yazınca tutar tablosu, tarih ve saat, kayda bağla, çizim ve şablonlar; ajandaya eklenen yapılacağın satırında "Yarın 14:30" gibi zamanı. Not iki cihazda aynı anda değişirse değişiklikler birleştirilir.
- **Projeler:** Ajanda › Projeler'de bir işin yapılacakları, etkinlikleri, ödemeleri, harcamaları, notları ve belgeleri tek sayfada; son tarih, ilerleme, bütçe ve sıradaki iş.
- **Özeti düzenle:** Özet'in bölümlerini aç, kapat ve sırala; hazır "Ajanda önce" düzeni ve yeni Bütçe bölümü.
- **Birden fazla hatırlatma:** bir kayda beşe kadar hatırlatma; "1 gün ve 15 dakika önce", "30, 7 ve 1 gün önce" gibi hazır seçenekler.
- **Hafta görünümünde planlama:** bilgisayarda ve tablette kaydı fareyle ya da kalemle sürükleyerek başka saate ya da güne taşırsın, alt kenarından çekip süresini değiştirirsin. Etkinliğe hazırlık ve yol için ara süre eklenir, tüm gün meşgul işaretlenir; Boş zaman bul ikisini de dolu sayar.
- **Tutara göre kart önerisi:** "20.000 TL harcayacağım" yazınca limiti yeten kartlar, alışverişten sonra kalan limit ve son ödeme günü; önerilen kart başta.
- **Kayıtlı senaryolar:** Raporlar › Nakit akışı'nda "Taşınırsam" gibi senaryoları adıyla kaydet, çoğalt; dört senaryoya kadar dönem sonu bakiye, en düşük bakiye ve eksiye düşülen gün yan yana.
- **Ay ay borç ödeme planı:** borç kapatma planı her ay hangi borca ne kadar (asgari ve ek) ödeneceğini, faizi ve kalanı gösterir; ek ödemenin borçları kaç ay erken kapattığı ve kullanılan oranlar da orada.
- **iPhone Duo:** dış ekranda da iç ekranda da ekranın tamamı kullanılır, katlayıp açınca Ajandam kendini yeniden boyutlar. Kitap gibi tutunca iki bölme katlama çizgisinden ayrılır; masaya dayayınca sayfa üst yarıda, alt yarıda "Yazarak ekle".
- **Tablette iki bölme:** Ajanda'da gün paneli takvimin yanında, açık notun yanında notların listesi, İşlemler'de dokunduğun kaydın ayrıntısı listenin yanında.
- **iPhone ve iPad:** iPad'de ve iPhone Duo'nun iç ekranında Ajandam iki pencerede açılır. iPhone yatay da kullanılır; basılı tutunca bağlam menüsü açılır; simgenin koyu, renkli ve şeffaf hâli var.
- **Daha güvenli geri yükleme:** yedekten geri yükleme ya da birleştirme yarıda kalırsa yazılanlar geri alınır, kayıtların değişmez.
- **iPhone ve iPad'de kendiliğinden eşitleme:** yedek klasörü seçilince (ör. iCloud Drive › Ajandam Yedekleri) bilgisayardaki Ajandam'la kayıtlar ve ekler kendiliğinden eşitlenir; telefonda taranan fatura bilgisayardaki kayıtta da görünür.
- **Bilgisayarda eşitleme:** ekler de eşitlenir, buradaki değişiklikler birkaç dakika içinde gider; son eşitleme, henüz gitmeyen değişiklikler ve hatalar Ayarlar'da görünür.

---

**Ayarlar ve pencereler**
- Bilgisayarda ve tablette Ayarlar ortada bir pencerede: üstte başlık ve kapatma düğmesi, solda arama ve bölümler, sağda seçili bölüm. Açılınca arama kutusu hazır; dokunmatik ekranda klavye kendiliğinden açılmaz, seçili bölüm odaktadır.
- Ayarlar'dan açılan pencere (yeni klasör, kategori, onay, Yenilikler…) Ayarlar'ın üstünde açılır, alttaki kararır; kapatınca Ayarlar kaldığın yerde, aramasıyla ve açık bölümüyle.
- Bütün pencereler aynı biçimde: Esc, kapatma düğmesi ya da pencerenin dışına tıklamak kapatır; Tab pencerenin içinde kalır; kapanınca pencereyi açtığın yere dönersin. Açılış ve kapanış kısa ve yumuşak; Görünüm › Animasyonlar Sade ise ya da Sisteme göre seçiliyken cihazda animasyonlar azaltıldıysa geçiş yok.
- **Telefonda:** pencereler ve Ayarlar eskisi gibi tam ekran.

**Notlar**
- Notların listesi kartlar yerine satırlar: Sabitlenenler, Bugün, Dün, Önceki 7 gün, Önceki 30 gün, bu yılın ayları ve önceki yıllar diye gruplu. Gruplar seçtiğin sıralamanın tarihine göre (son düzenleme ya da oluşturma); başlığa göre sıralayınca yalnızca Sabitlenenler ayrı.
- Satırda başlık ve zaman (bugün saat, son yedi günde gün adı, daha eskide tarih), tek satırlık özet, klasör, yapılacakların ilerlemesi ("1/3" gibi), ek sayısı ve en çok üç etiket. Şifreli notun satırında içerikten hiçbir şey görünmez.
- Aramada aranan sözcük başlıkta ve özette işaretli; aranan yer notun derinlerindeyse özet oradan başlar.
- Son silinenler, Arşiv ve tablette açık notun yanındaki liste de aynı satırlarla.
- Not yazarken biçimlenir: başlıklar büyük; kalın, italik, vurgulu ve üstü çizili yazı ile kod biçimli; yapılacak kutusuna tıklayınca işaretlenir, yapılmış satır çizili; madde işaretleri nokta, ayraç çizgi; not ve kayıt bağlantıları ile ekler küçük etiketler hâlinde, tıklayınca açılır; #etiketler renkli. Satırın işaretleri (#, >) imleç o satırdayken, yazının işaretleri (**, ==, `) imleç o yazıya değince görünür.
- Notun metni eskisi gibi düz metin (Markdown): eşitleme, not geçmişi, şifreleme, önizleme ve dışa aktarma değişmedi. Notun ⋯ menüsünde Klasik düzenleyiciye geç ve geri; kod görünümü eskisi gibi satır numaralı.
- **Bilgisayarda bağlantılar:** bağlantıya ⌘ ya da Ctrl ile tıklayınca açılır, etikete ⌘ ya da Ctrl ile tıklayınca o etiketin notları listelenir.
- Tablolar düzenleyicide de tablo olarak görünür; hücreye tıklayınca o hücre düzenlenir.
- Tutar tablosu: son satırı "Toplam" olan tablonun Toplam'ı kalemlerin toplamıdır; tutar değiştikçe kendiliğinden güncellenir, kalın yazı ve ₺ ya da TL yazılışı korunur. Tabloda son kalemden sonra Tab yeni satırı Toplam'ın üstüne açar.
- Birikim hedefine bağla: notun ilk tutar tablosunun altından yeni ya da var olan bir birikim hedefine bağlarsın; hedefin tutarı tablonun toplamı olur, biriken ve hedef tablonun altında görünür. Toplam sonradan değişirse "Hedefi … yap"; bağ istenince kaldırılır, hedef ve katkıları kalır.
- Ajandaya eklenen yapılacağın satırında zamanı: Bugün, Yarın 14:30, haftanın günü ya da tarih; günü geçen kırmızı, yapılan işaretli.
- Komutlar: satırın başında ya da boşluktan sonra / yaz (ya da araç çubuğundaki / düğmesi): tutar tablosu, tarih ve saat (yapılacak Ajanda'da da görünür), kayda bağla, dosya ekle, başlık, liste, alıntı, kod bloğu, ayraç, tablo ve şablonlar. Yazdıkça süzülür, ok tuşları ve Enter ile seçilir.
- **iPhone ve iPad:** komutlarda Belge tara: kamerayla taranan belge nota PDF olarak eklenir.
- Not geçmişinde "Şimdiki hâlle farkı": seçtiğin sürümden bu yana eklenen ve silinen satırlar renkli, değişmeyen uzun bölümler katlı; kaç satırın değiştiği yazılı.
- Web sayfasından ya da belgeden yapıştırılan biçimli metin biçimiyle gelir: başlık, liste, yapılacak, kalın ve eğik yazı, bağlantı, tablo; resimler alt yazısıyla.
- **Bilgisayarda düz yapıştırma:** ⇧⌘V ya da Ctrl+Shift+V biçimsiz yapıştırır.
- Aramada yazım hatasına dayanıklı "Benzer notlar": tam eşleşen not olmasa da yazılışı benzeyenler listenin altında.
- Çizim: / › Çizim ile parmakla, kalemle ya da fareyle çiz (kalemde bastırdıkça kalınlaşır); renk ve kalınlık seç, geri al. Çizim nota resim olarak eklenir.
- Önizlemede yapılacakları maddenin solundaki tutamaçla sürükleyerek sırala; düzenleyicide satırı ⌥↑ / ⌥↓ (Alt+↑ / Alt+↓) taşır.
- Bir not iki cihazda ya da iki pencerede aynı anda değişirse değişiklikler satır satır birleştirilir: farklı yerlerdeki değişikliklerin ikisi de kalır; aynı satırlar farklı değiştiyse bu cihazdaki kalır, öbürü Not geçmişi'nde.
- **Telefonda Notlar:** klasörler ve etiketler başlıktaki "Tüm notlar" menüsünde, süzgeç şeridi yok; satırı sola kaydırınca Sabitle, Taşı, Sil. Not yazarken biçimli düzenleyicide açılır (tek kip), klavye dokununca açılır; göz düğmesi o not için önizlemeye geçer. Notlar'da yuvarlak düğme doğrudan yeni not açar.
- **Bilgisayarda bilgi paneli:** geniş pencerede notun yanında içindekiler (imlecin bulunduğu başlık işaretli, tıklayınca oraya gider), notun ajandadaki kayıtları (hatırlatıcı, ajandaya eklenen yapılacaklar; önce yaklaşanlar) ve bu nota bağlanan notlar. Çubuktaki düğmeyle kapatılır; yan yana görünümde yok.

**Özet**
- Özeti düzenle (Özet'in başındaki düğme, sondaki bağlantı ya da Ayarlar › Görünüm › Özet görünümü): her bölümü aç ya da kapat, yukarı ve aşağı taşı; Kaydet'le uygulanır, geri alınır. Hazır düzenler: Varsayılan ve Ajanda önce (önümüzdeki 7 gün ya da bugünün işleri ve ödemeler en üstte).
- Yeni Bütçe bölümü: limitli kategorilerin toplamı, aylık tavan ve en çok dolan dört kategori; limit yoksa Bütçe'ye götürür.
- Sade ve Ayrıntılı görünümün düzeni ayrı; düzen bu cihazda kalır. Standart görünüme dön bölümleri de varsayılana döndürür.
- **Bilgisayarda:** bölümün sağ tık menüsünde Bu bölümü gizle, Yukarı taşı, Aşağı taşı ve Özeti düzenle.

**Ajanda**
- Projeler: Ajanda › Projeler'de projeye ad, renk, açıklama, son tarih ve bütçe ver. İşlem, ödeme, etkinlik ve yapılacak formundaki Proje alanıyla, not "Projeye bağla…" ile projeye bağlanır.
- Projenin sayfasında son tarih, yapılacakların ilerlemesi, harcanan ve bütçe, bekleyen ödemeler ve sıradaki iş; altında Yapılacaklar (geciken Bugüne alınır), Takvim, Harcamalar, Notlar ve Belgeler. Sayfadan eklenen kayıt o projeyle açılır. Tamamlanan projeler listenin altında; silinen projenin kayıtları yerinde kalır.
- Birden fazla hatırlatma: bir kayda en çok beş hatırlatma; formda "Bir hatırlatma daha" ve hazır seçenekler (saatli kayıtta 1 gün ve 15 dakika ya da 1 saat ve 10 dakika önce; tüm gün kayıtta 30, 7 ve 1 gün ya da 1 gün önce ve aynı gün). Her hatırlatma ayrı bildirim; Ajanda'da ve Özet'te zilin yanında yazılı. Takvim dosyası hepsini taşır.
- Ara süre: saatli etkinliğe hazırlık ve yol için önce ve sonra süre; hafta görünümünde bloğun üstünde ve altında taralı. Tüm gün etkinlik "Meşgulüm" ile işaretlenir. Boş zaman bul ikisini de dolu sayar; takvim dosyasıyla gidip gelir.
- **Bilgisayarda ve tablette:** hafta görünümünde saatli kaydı fareyle ya da kalemle sürükleyerek başka saate ya da güne taşı (çeyrek saate oturur, Esc vazgeçer), alt kenarından çekerek bitişini değiştir. Klavyede kayıt seçiliyken Alt (⌥) ile ↑ ↓ 15 dakika, ← → bir gün; Shift de basılıysa süre. Tekrarlayan kayıtta yalnızca o tekrar taşınır; Geri al tek adımda.

**Para**
- Kayıtlı senaryolar: Raporlar › Nakit akışı'nda kurduğun senaryoyu (kira artışı, tek seferlik gider, kart borcunu kapatma, kredi…) adıyla ve açıklamasıyla kaydet; çoğalt, düzenle, sil. Açık senaryoya eklenen ve çıkarılan kalem kaydedilir.
- Senaryoları karşılaştır: en çok dört kayıtlı senaryo şimdikinin yanında: dönem sonu bakiye, en düşük bakiye ve günü, eksiye düşülen ilk gün, giriş, çıkış, kart ve kredi faizi; çok çizgili grafikte birlikte.
- Borç kapatma planında ay ay ödeme planı: her ay her borca ne ödeneceği (asgari ve ek), faiz ve vergi, anaparaya giden ve kalan; ilk 12 ay, istersen hepsi.
- Ek ödemenin etkisi: yalnızca asgarileri ödemek, daha az ve daha çok ayırmakla borçların ne zaman kapandığı ve ne kadar faiz ödendiği; Dene o tutarı plana yazar. Oranlar ve varsayımlar: her borcun aylık ve yıllık oranı, asgari ödeme kuralı, TCMB oranları ve vergiler.
- Hangi kartla ödemeli: komut paletinde, Yazarak ekle'de ya da Asistan'da "20.000 TL harcayacağım" yazınca limiti yeten kartlar, alışverişten sonra kalan limit ve son ödeme günü; "yarın", "6 taksit" gibi gün ve taksit de anlaşılır. Önce limitin %80'inin altında kalan ve en geç ödenen kart. Yazılan metin kayıt olarak eklenmez; harcama olarak eklemek ikinci seçenek.
- "Hangi kartla ödemeli?" penceresi (Hesaplar'daki Bugün harcarsan şeridinde Tutara göre, Kart araçları, komut paleti): tutar, gün ve taksit; kart kart kalan limit ya da eksik, doluluk ve son ödeme; Bu kartla ekle gider formunu doldurur. Asistan bu soruyu yapay zekaya göndermeden kayıtlarından cevaplar.

**iPhone ve iPad**
- iPhone Duo: Ajandam iki ekranın tamamını kullanır; dış ekranda ve iç ekran yatayken gezinme ve sekme çubukları yanda. Katlayıp açınca, iPad'de pencere daralınca düzen ve gezinme çubuğunun düğmeleri yeniden kurulur.
- Yarım katlı duruş: kitap gibi tutunca Ajanda'da takvim ve gün paneli, notta liste ve not, İşlemler'de liste ve ayrıntı katlama çizgisinin iki yanında. Masaya dayayınca sayfa çizginin üstünde, altta "Yazarak ekle" durur: klavye kendiliğinden açılmaz, Kapat'la duruş değişene kadar kalkar; duruş bitince yazdığın olağan "Yazarak ekle" penceresinde sürer.
- İki pencere: iPad'de ve iPhone Duo'nun iç ekranında Diğer › Yeni pencerede aç; notta ve kenar çubuğundaki bölümde basılı tut › Yeni pencerede aç. Bir pencerede yazılan öbüründe de görünür.
- iPhone'da yatay: alçak pencerede pencerelerin düğmeleri yan yana, kilit ekranı iki sütun.
- Bağlam menüsü: kayda, hesaba, nota ya da bölüme basılı tutunca işlemleri (Düzenle, Çoğalt, Sil, Yeni pencerede aç…) sistemin menüsünde açılır.
- Simge: ana ekranda koyu, renkli ve şeffaf simge; seçilebilen simgeler (Gece, Turuncu, Beyaz) eskisi gibi.
- Kendiliğinden eşitleme: Ayarlar › Veriler ve yedek'te yedek klasörü seçilip (ör. iCloud Drive › Ajandam Yedekleri, bilgisayarın da kullandığı klasör) Kendiliğinden eşitle açılınca kayıtlar ve ekler bilgisayardaki Ajandam'la eşitlenir: açılışta, öne gelince ve 15 dakikada bir bakılır; bu cihazdaki değişiklikler birkaç dakika içinde ve Ajandam arka plana geçerken gider. İki cihazda da değişen kayıt, çok silme ya da daha yeni sürümün yedeği olunca sorar. Ayarlar son eşitlemeyi, henüz gitmeyen değişiklikleri ve hataları söyler.
- Aramada ve Yazarak ekle'de "20.000 TL harcayacağım" yazınca önce kart önerisi; Göster Ajandam'da açar, harcama olarak eklemek ikinci seçenek.

**Telefon ve tablet**
- İki bölme geniş ekranda (tablette ve katlanabilir telefonun iç ekranında): Ajanda'da gün paneli takvimin yanında, takvim daralınca günlerde kayıtlar nokta olur. Açık notun yanında notların listesi, Notlar'daki süzgeç ve sıralamayla; listeden seçilen not açık olanın yerine geçer.
- İşlemler'de kayda dokununca ayrıntısı listenin yanında açılır: tutar, tarih, tür, kategori, hesap, döviz, taksit, ekler ve aynı açıklamalı kayıtlar. Düzenle, Çoğalt ve Sil oradan; ekranın dar hâlinde kayda dokununca eskisi gibi düzenleme penceresi açılır.
- Bankadan gelen kaydı onaylayınca "eklendi" ancak kayıt yazılınca çıkar; yazılamazsa kayıt onay bekleyenlerde kalır.

**Bilgisayarda**
- Kendiliğinden eşitleme: son eşitleme ("Son eşitleme: cihaz, zaman, kaç yeni kayıt") ve hata (yedek okunamadı, bozuk, başka bir Ajandam'ın, parolası farklı, yazılamadı) Ajandam kapanıp açılsa da Ayarlar › Veriler ve yedek'te görünür. Şimdi eşitle hatadan sonra yeniden dener.
- Kendiliğinden eşitlemede ekler de gelir: her cihaz eklerinin kopyasını yedek klasörüne ve bulut kopyasına yazar (yedek parolası varsa şifreli), öbürü kayıtlarda adı geçen eksik ekleri oradan alır. Buradaki değişiklikler birkaç dakika içinde ve pencere arka plana geçince gider; Ayarlar henüz gitmeyen değişiklikleri ve yedek klasörüne yazılamadıysa nedenini söyler. Şimdi eşitle önce buradakileri gönderir.
- Hızlı ekleme penceresinde "20.000 TL harcayacağım" yazınca önce kart önerisi (Enter Ajandam'da açar); Tab ile harcama olarak eklenir.

**Yedek ve birleştirme**
- Yedekten geri yükleme ya da birleştirme yarıda kalırsa (ör. disk dolu) o ana kadar yazılanlar geri alınır, kayıtların değişmez; neyin tamamlanamadığı söylenir. Geri alma da yarıda kalırsa Ajandam yer açılınca yeniden yazar.
- Yedek metninde yeni kayıt yoksa ama çakışma varsa çakışmalar gösterilir.

**Düzeltmeler**
- Fiyat uyarısının bildirimi bir kez ve zamanında gelir.
- Akış şeması: bir kategoride iade harcamadan büyükse fark "İade fazlası" olarak ayrı görünür; şemanın neti özetinkiyle aynı.
- Borç kapatma planı kart faizini her ay borcun o ayki kademesine göre hesaplar; borç azaldıkça oran düşer.
- Borç kapatma planı kişiye olan borcun vadesini sayar: borcun tamamı vadesinin ayında ödenir; ayırdığın tutar yetmiyorsa o ay ne kadar eksik kaldığı ve vadesinde kapatmak için her ay en az ne ayırman gerektiği söylenir.
- Kendiliğinden eşitlemede başka cihazda silinen bir kaydın silme izi diske yazılamazsa (ör. disk dolu) yedek yine de eşitlenmiş sayılıyor, kayıt üçüncü cihazın eski yedeğinden geri gelebiliyordu; artık iz yazılmadan eşitlenmiş sayılmaz, sonraki bakışta yeniden denenir.
- Şifrelenen notun şifresiz hâli not geçmişine düşebiliyordu; artık düşmüyor, önceden kalmışsa siliniyor.

## [4.5.0] – 2026-11-05

Ajandam 4.5 parayı senin düzenine göre sayıyor ve önünü görmene yardım ediyor: ay istersen maaş gününde başlıyor; hangi kartla harcarsan ödemenin ne zaman geleceğini, borçlarının ne zaman kapanacağını ve paranın nereden gelip nereye gittiğini görüyorsun. Faturanın karekodu okunuyor, denemesi biten abonelik önceden hatırlatılıyor, cihazlar arası birleştirme daha da sağlam. Öne çıkanlar:

- **Ay maaş gününde başlar:** Ayarlar › Genel › Ay başlangıcı'nda ayın kaçında başlayacağını seç (1–28): Özet, Bütçe, Raporlar ve İşlemler ayı o günden sayar, ay "15 Eki – 14 Kas" gibi yazılır. Ajanda ve ödemeler takvim ayıyla kalır.
- **Hangi kartla öde:** iki ya da daha çok kredi kartın varsa Hesaplar'daki "Bugün harcarsan" şeridi bugünkü harcamanın her kartta ne zaman ödeneceğini söyler, en uzun süre önce. Kartın dönemi başlayınca sabah özetinde de.
- **Borç kapatma planı:** Borç ve alacak › Toplam borç › Kapatma planı: her ay ayıracağın tutarla kart, ek hesap, kredi ve kişisel borçların kaç ayda kapanır, ne kadar faiz ödersin; en yüksek faizli ya da en küçük borç önce.
- **Akış şeması:** Raporlar › Akış şeması: 1, 3, 6 ya da 12 ayda gelirlerin solda, giderlerin sağda; aradaki fark birikime ya da birikimden.
- **Faturanın karekodu:** e-Fatura ya da e-Arşiv faturasının PDF'ini ya da fotoğrafını ekleyince karekodu okunur; tutar, tarih, satıcı ve kategori yazılır. Aynı fatura ya da aynı dosya başka bir kayıtta varsa söylenir.
- **Abonelikte deneme ve yıllık yenileme:** ücretsiz deneme bitmeden 3 ve 1 gün önce, yıllık abonelik yenilenmeden 7 gün önce hatırlatılır; İptal ettim ile çekim eklenmez.
- **Fiyat uyarısı:** döviz, altın ya da kripto belirlediğin fiyatı geçince ya da altına inince bildirim. Fon fiyatı 7 günden eskiyse hatırlatılır.
- **Boş zaman bul:** etkinlik ya da yapılacak eklerken çalışma saatlerinin içinde ajandandaki boşluklar önerilir.
- **İçe aktarmada döküm yanında:** geniş pencerede seçili satırın PDF sayfası yanda açılır, satırın yeri işaretli.
- **Daha sağlam birleştirme:** çakışma her cihaz için ayrı izlenir, bütün çakışmalar seçilebilir; yarıda kalan geri yükleme geri alınır.
- **Bilgisayarda kendiliğinden eşitleme:** aynı yedek klasörünü kullanan bilgisayarlar birbirinin yeni kayıtlarını kendiliğinden alır; çakışma ya da çok silme varsa önce sorar.
- **iPhone ve iPad:** Belge tara: çok sayfalı faturayı ya da sözleşmeyi kamerayla tara, tek PDF olarak eklenir ve ilk sayfası okunur. Faturanın karekodunu kamerayla da okutursun. Kestirmeler'deki bir otomasyonla bankanın SMS'i Özet'te onay bekler.
- **Android:** bankanın uygulamasından ya da SMS'inden gelen harcama bildirimi Özet'te onay bekler, Ekle'ye basmadan kaydedilmez. Telefonun takvimleri Ajanda'da görünür; ana ekrana "Ajandam · Bugün" araç takımını ekleyebilirsin. Faturanın karekodunu kamerayla da okutursun.

---

**Ay başlangıcı**
- Ayarlar › Genel › Ay › Ay başlangıcı 1–28; 1 takvim ayıdır, eskisi gibi. 15'te Ekim 15 Ekim'de başlar, 14 Kasım'da biter; 15 Kasım'da yatan maaş Kasım'ındır.
- Ay toplamları, bütçe harcaması ve devri, Özet'in günlük çizgisi, ay sonu tahmini, günlük pay ve bekleyen ödemeleri, Raporlar (Genel, Ay özeti, Akış şeması, Enflasyon) ve CSV'si, İşlemler'in ay süzgeci ile Bu ay, Geçen ay, Son 3 ay, sabah özetinin bütçe satırı ve Ajandam'a sor dönemle sayar. Bu görünümlerde ay okları ve ay seçici dönemle gider; gün gelince dönem kendiliğinden ilerler.
- Ajanda, ödemelerin listesi ve hatırlatmaları, abonelikler ve Yılın özeti takvim ayıyla kalır.
- Ay kapanışı dönemin son gününe kadar kilitler; eski sürümler o güne kadar biten son takvim ayını kapalı görür.

**Kartlar ve borçlar**
- Hangi kartla öde: kesim ve son ödeme günü girilmiş kartlar. Kesim günü yapılan harcama o günün ekstresine girer, ertesi gün yapılan en geç ödenir; son ödeme hafta sonuna ya da resmî tatile denk gelirse ilk iş gününe kayar, limiti dolan kart sonda. Şeritteki karta dokununca Kart araçları açılır; orada da "Bugün harcarsan son ödeme" yazar.
- Bir kartın hesap kesiminin ertesi sabahı sabah özetinde "Kart dönemi başladı" ve o gün yapılan harcamanın son ödeme günü; Ayarlar › Bildirimler › Kart dönemi başladı'dan kapatılır. PIN açıkken yalnızca kart sayısı.
- Borç kapatma planı: her ay önce asgariler ödenir, artan sıradaki borca gider, kapanan borcun asgarisi de sıradakine kalır. Kartta akdi faiz ve vergiler, ek hesapta ve kredide kendi oranı hesaba katılır. Yalnızca asgarilerle ödeseydin ne olacağıyla karşılaştırılır; tahmindir, kayıt yazmaz.

**Raporlar**
- Akış şeması: kategoriler üst kategorisinde, sağda en çok 8, solda en çok 6 kalem; transfer ve ileri tarihli kayıt girmez, iade kendi kategorisinden düşer. Gelir, gider ve birikim oranı kutuları; tablo olarak da görülür, dar ekranda önce tablo.

**Faturalar ve ekler**
- Faturanın karekodu PDF'in ilk sayfasından ya da fotoğraftan okunur; okuma cihazda yapılır, hiçbir şey gönderilmez. Yeni kayıtta boş alanlara ödenecek tutar, fatura tarihi, satıcı (aynı vergi numaralı önceki kayıttan ya da faturadan) ve kategori yazılır; formdaki tutar farklıysa "Karekoddaki tutarı yaz". İade faturasında ve dövizli faturada tutar yazılmaz.
- Aynı fatura başka bir kayıtta varsa, eki olmasa da söylenir. Aynı dosya aynı kayda ikinci kez eklenmez, başka bir kaydın ekindeyse uyarılır: eki kaldırır ya da kalsın dersin.
- İçe aktarmada döküm yanında: geniş pencerede gözden geçirme listesinin yanında dökümün kendisi; seçili satırın sayfası açılır, yeri turuncu kutuyla işaretli. ↑ ↓ ile satır satır; pencere daralınca panel kalkar, seçim kalır. "Dökümü gizle" bu cihazda hatırlanır. Excel ve CSV dökümlerinde satırın yeri yok.

**Abonelikler ve hatırlatmalar**
- Abonelik formunda "Ücretsiz denemeyle başlıyor": ilk tarih denemenin bittiği gün olur. Deneme sürerken Abonelikler'de "Deneme · 3 gün kaldı" ve İptal ettim: abonelik duraklatılır, çekim eklenmez; geri alınır.
- Deneme bitmeden 3 ve 1 gün önce, yıllık abonelik yenilenmeden 7 gün önce sabah özetinde; sabah özeti kapalıysa ayrı bildirim. PIN açıkken ad ve tutar yok. Ayar: Abonelik hatırlatması.
- Fiyat uyarısı: döviz ve altın ya da kripto hesabının panelinden ya da Ayarlar › Bildirimler › Fiyat uyarıları'ndan, en çok 20. Uyarı bir kez çalar ve listede kalır: Yeniden kur ya da sil. Canlı fiyatlar açık olmalı.
- Fon fiyatı: fon kodunun yanında TEFAS bağlantısı (Fiyatı güncelle penceresinde ve fon hesabının tablosunda). Son fiyat 7 günden eskiyse fon hesabının panelinde uyarı ve pazartesi sabah özetinde "Fon fiyatları güncel değil"; Ayarlar › Bildirimler › Fon fiyatı hatırlatması. Fiyat yine elle girilir.

**Ajanda**
- Boş zaman bul: etkinlik ve yapılacak penceresinde, Süre ile (15 dakika–4 saat). Önümüzdeki 14 günde günde en çok 2, toplam 6 öneri; Ajandam'ın saatli kayıtları ve açık takvimlerin olayları dolu sayılır, tüm gün kayıtlar ve ödemeler sayılmaz. Öneriye dokununca tarih ve saat forma yazılır.
- Çalışma saatleri ve günleri: Ayarlar › Takvim › Boş zaman (varsayılan hafta içi 09:00–18:00).

**Yedek ve birleştirme**
- Çakışma her cihaz ve her kayıt için ayrı izlenir: başka bir cihazla birleştirmek çakışmayı gizlemez, öbür cihazın saati ileride ya da geride olsa da doğru hal kalır; buradakini seçtiğin kayıt sonraki birleştirmelerde korunur, aynı yedek ikinci kez bir şey yazmaz. Geri al yalnızca o birleştirmenin yazdığını geri alır.
- Önizlemede bütün çakışmalar seçilebilir: 20'şer sayfa, seçimler sayfalar arasında korunur; Tümünde buradakini seç ya da Tümünde geleni seç.
- Geri yükleme yarıda kalırsa uygulananlar kendiliğinden geri alınır, kayıtların değişmez; geri alınamazsa ya da Ajandam arada kapanırsa Özet'te söylenir.
- Silme izi ancak silme yazılınca yazılır: yazılamayan silme öbür cihazlarda kaydı silmez, Ajandam arada kapansa da.
- Kapalı ayların bakiyesini değiştirecek açılış tutarı ve para birimi değişikliği yazılmaz; güncel bakiyeyi girince fark bugün tarihli düzeltme olur. Açılış tutarı kapalı aylara giren hesap silinmez, arşivlenir; birleştirme de bunları değiştirmez.

**Bilgisayarda**
- Ayarlar › Veriler ve yedek › Kendiliğinden eşitle (yalnızca bu bilgisayarda): aynı yedek klasörünü seçmiş öbür cihazların en yeni yedeği açılıştan bir dakika sonra ve açıkken 15 dakikada bir okunur. Yeni kayıtlar, orada değişenler ve silinenler sormadan alınır; bildirim ve Geri al.
- İki cihazda da değişen kayıt, çok silme, daha yeni sürümün yedeği ya da bu bilgisayarın anahtarıyla açılmayan şifreli yedek olunca önce sorulur: Özet'te şerit ve İncele…. Kapalı aylar ve ekler gelmez.

**Telefon ve tablet**
- Faturanın karekodunu kamerayla okut: eklerin yanında Karekodu okut.
- Bankadan gelen kayıtlar Özet'te onay bekler: tutar, açıklama (iş yeri ya da kişi), kategori ve hesap (kartın son 4 hanesinden) mesajdan okunur. Ekle (Geri al ile), Düzenle ya da Yok say; aynı işlem iki kez gelirse söylenir. Mesajlar yalnızca cihazda kalır, kayıtlara ve yedeğe girmez.
- Fiyat uyarılarına Ajandam açıkken ve açılınca bakılır.

**iPhone ve iPad**
- Belge tara: işlem ve ödeme penceresinde eklerin yanında. Sistemin tarayıcısı kenarları bulur, kırpar, düzeltir; en çok 30 sayfa tek PDF olur. İlk sayfa cihazda okunur: yeni giderde boş tutar, tarih, açıklama ve kategori, yeni ödemede tutar ve ad dolar. Taranan belgede okunan tutar ve tarih aynı fatura uyarısına da bakar.
- Bankanın SMS'i: Kestirmeler'deki Mesaj otomasyonu "Onay bekleyenlere ekle"yi Ajandam açılmadan çalıştırır; Ayarlar › Bildirimler › Bankadan gelenler › Nasıl kurulur adım adım anlatır.

**Android**
- Bankanın bildirimleri: Ayarlar › Bildirimler › Bankadan gelenler › Aç: önce ne yapılacağı anlatılır, sonra Android'in Bildirim erişimi ekranı açılır. Yalnızca bankacılık işlemi gibi görünen bildirimler saklanır; doğrulama kodları, kampanyalar, sohbet uygulamaları ve kişilerden gelen SMS'ler alınmaz. Bir uygulamayı "Bu uygulamadan alma" ile kapatırsın.
- Telefonun takvimleri: Ayarlar › Takvim › Takvim uygulamasındaki etkinlikleri göster; olaylar Ajanda'da salt okunur. İzin yalnızca açınca sorulur; olaylar kaydedilmez, gönderilmez.
- "Ajandam · Bugün" araç takımı: bugünün ajandası, son günü gelen, geciken ve yaklaşan ödemeler; kayıtlar değişince ve yarım saatte bir yenilenir. PIN açıkken kayıt göstermez; dokununca Ajanda'nın bugünü açılır.

**Düzeltmeler**
- Düzenli kayıt (kira gibi), bekleyen ödeme, taksit ya da abonelik ödendiği gün "Bugün harcayabileceğin"i sıfırlamıyor: önceden ayrılan tutar o günün harcaması sayılmıyor, ayın kalan günlerine yayılıyor.

## [4.4.0] – 2026-11-04

Ajandam 4.4 her ekrana oturuyor: dar pencerede, küçük ekranda ve büyük yazıyla satırlar taşmıyor, tutarlar ve adlar kesilmiyor; ipuçları cihazına göre konuşuyor. Öne çıkanlar:

- **Büyük yazıda ve dar ekranda düzen:** Ayarlar'ın satırları, borç listesi, üç kutulu özetler, kredi kartı kartı, abonelikler ve pencerelerin düğmeleri sığar; uzun değer kesilmez, alt satıra geçer.
- **Telefonda İşlemler:** ilk kayda kadar dört satır: görünüm; ay, Filtreler ve Diğer menüsü (sıralama, birden çok kaydı seç, CSV); tür; arama. Hesap, kategori, etiket ve kişi Filtreler'de, etkinken çip olarak görünür.
- **Telefonda hafta görünümü:** ızgara kendi içinde yana ve aşağı kayar; saatler ve günler yerinde kalır, bugünün sütunu öne gelir.
- **Telefonda notlar:** dolu not okunur hâliyle açılır; düzenlemek için kalem.
- **iPhone ve iPad:** ay satırı yenilendi: ay adı solda, Bu ay ve oklar sağda. Bir pencere açıkken arkadaki sayfa kaymaz.
- **Android:** üst çubuğun düğmeleri parmak boyunda; dikey tablette kenar çubuğu içeriğin üstüne açılır.
- **Yedekler:** Ajandam son 14 günün, 8 haftanın ve 12 ayın yedeğini tutar; uygulama ve kullanım koşulları artık bunu söylüyor.

---

**Düzen**
- Büyük yazıda Ayarlar'da seçili değer başlığın altında, düğme yazısı alt satıra geçer, uzun e-posta adresi kırılır. Dar ekranda büyük yazıyla uygulama simgesi seçimi ve borç listesinin değerleri ikişer sütun.
- Borç listesi dar ekranda kart kart, her değerin adı yanında. Üç kutulu özetler büyük yazıda ikişer, üçüncüsü alt satırın tamamında.
- Kredi kartı kartının son satırı ve abonelik satırları her yazı boyutunda sığar; dar alanda da abonelik adları okunur. Asistan'ın örnek soruları ve yazı alanı ekrana sığar.
- Seçim düğmeleri sığmazsa kendi içinde yana kayar; panel başlığındaki seçim sığmazsa alta iner. Pencerenin altında üç ya da daha çok düğme varsa dar ekranda alt alta, birincisi üstte.
- Özet'te Gelir ve Gider düğmeleri birlikte alt satıra geçer; 6 ay, 1 yıl ya da geçmiş bir ay seçilince büyük kartın üstünde boş şerit kalmaz.
- Dar ekranda Enflasyon tablosunda bugünün parasıyla değer tutarın altında; Ayarlar › Hakkında'nın özellikleri dar alanda alt alta.
- Başında simge olan ipuçlarında yazı simgenin yanından başlar; açıklamalı onay kutularında kutu solda, ad ve açıklama sağda alt alta.
- Geniş ekranda grafiklerin eksen yazıları okunur boyda.
- Dokunmatik ekranda ve Büyük hedefler açıkken bağlantı düğmeleri, etiket ve kategori düğmeleri, notun araç çubuğu ve hesap penceresinin Açılış tutarı başlığı da büyük.

**Yedekler ve sürüm notları**
- Yedekler katmanlı tutulur: günlük yedekler 14 gün, haftalık yedekler 8 hafta, aylık yedekler 12 ay. Tanıtım, şifreleme penceresi ve kullanım koşulları artık bunu söylüyor (önceden "son 30 gün" yazıyordu).
- Sürüm notları ve güncelleme penceresi yalnızca bu cihazdaki Ajandam'ın yeniliklerini gösterir.

**Telefon ve tablet**
- İşlemler'de dönem, hesap, kategori, etiket ve kişi Filtreler penceresinde; etkin olanlar çip olarak görünür. Sıralama, birden çok kaydı seçme ve listelenenleri CSV olarak alma Diğer menüsünde.
- Hafta görünümünde sütunlar okunur genişlikte, saat sütunu ve gün başlıkları yerinde kalır; görünüme girince, Bugün'e dokununca ve hafta değişince bugünün sütunu öne gelir, yeniden çizimde kaldığın yer korunur.
- İpuçları ve yardım metinleri dokunuşa göre ("dokun", "iki kez dokun"); tuş ve fare sözcükleri yok.

**iPhone ve iPad**
- Özet'in, Ajanda'nın, Bütçe'nin ve İşlemler'in ay satırı iOS'un tarih seçicisindeki gibi: ay adı solda, "Bu ay" ve oklar sağda; uzun ad satırı kırar. Raporlar'ın yıl satırı da aynı biçimde.
- Bir pencere, arama ya da ay seçici açıkken arkadaki sayfa kaymaz.
- Başlarken "Yazarak ekle"yi gösterir; tutarlar gizlenince ipucu Diğer menüsünü söyler.
- Hesap görselinde "iPhone'undan" ya da "iPad'inden bir resim seç" yazar; cümle başında iPhone ve iPad küçük i ile.
- iPhone'da Ayarlar'da Klavye kısayolları yok; Notlar'ın arama alanı satırın tamamı.

**Android**
- Üst çubuğun düğmeleri (kenar çubuğu, Asistan, tutarları gizle) ve arama kutusu parmak boyunda.
- Tableti dikey tutunca kenar çubuğu telefondaki gibi içeriğin üstüne açılır, seçince kapanır; içerik daralmaz.

**Windows**
- Windows 11 başlık çubuğuyla dar pencerede arama kutusunun yazısı taşmaz.
- Sekmenin sağ tık menüsünde Kapat'ın yanında Delete yazar.

## [4.3.0] – 2026-11-03

Ajandam 4.3 günü, haftayı ve ayı toparlamana yardım ediyor: Özet'in sade görünümü yalnızca bugünü gösteriyor, haftanın sonunda yarım kalanları tek pencerede kapatıyorsun, biten ayı kapatınca geçmiş toplamlar değişmiyor. Bir ödemenin hesabı yetmeyecekse Ajandam bunu önceden söylüyor. Öne çıkanlar:

- **Sade Özet:** Özet'in başındaki Ayrıntılı | Sade ile yalnızca bugün: net varlık ve hesaplar, bugünün işleri, bekleyen ödemeler. Seçim bu cihazda kalır.
- **Haftayı kapat:** gecikmiş ödemeler, bitmemiş yapılacaklar ve Gelen kutusu tek pencerede; her birini tamamla, gelecek haftaya taşı ya da bırak. Haftanın son üç günü Özet'te hatırlatılır.
- **Ödemeden önce bakiye:** ödemenin hesabı son güne kadar yetmeyecekse Ödemeler'de ve Özet'te uyarı; ek hesap (KMH) limiti hesaba katılır, döküm o güne kadarki her kalemi gösterir.
- **Ay kapanışı:** biten ayı kapatınca o ayın ve öncesinin işlemleri değiştirilemez; yanlışlıkla eklenen, düzenlenen ya da silinen bir kayıt geçmiş toplamları ve bakiyeleri bozmaz. Gerekirse ayı bilerek açarsın.
- **Standart görünüme dön:** Ayarlar › Görünüm yalnızca o cihazda çalışan seçenekleri gösterir; tek düğmeyle hepsi varsayılana döner.
- **iPhone ve iPad:** Siri ve Kestirmeler'de Gider ekle (tutar, hesap, kategori; önizlemede onay). Bir eki Hızlı Bakış'ta işaretleyince işaretli kopya ayrı ek olur, orijinal değişmez. iPhone'da Ara sekmesi öbür sekmelerle aynı çubukta.
- **Telefonda Ayarlar:** bilgisayardaki Ajandam'ın düzeninde: renkli simgeli gruplar, satırın sağında değeri.
- **Android:** Android 12 ve sonrasında vurgu rengi duvar kağıdından gelebilir (Material You).

---

**Özet**
- Ayrıntılı | Sade seçimi Özet'in başında ve Ayarlar › Görünüm › Özet görünümü'nde; bu cihazda saklanır, yedeğe ve öbür cihazlara gitmez.
- Sade: bugünkü net varlık ve bugün harcayabileceğin pay, bekleyen ödemelerin toplamı, hesap kartları, "Bugün" (geciken yapılacaklar, bugünün etkinlikleri ve yapılacakları, son günü bugün olan ödemeler; boşsa "Bugün boş") ve yaklaşan ödemeler.

**Ajanda**
- Haftayı kapat: Ajanda'nın başlığından, komut paletinden ve haftanın son üç günü Özet'teki şeritten açılır. Yapılacakta Gelecek haftaya kaydı (tekrarlayanda yalnızca o tekrarı) gelecek haftanın ilk gününe taşır; ödemede son gün değişmez, hatırlatma o güne kayar. Bırak kayda dokunmaz.

**Ödemeler**
- Hesap yetmeyecekse ödemenin satırında "Maaş hesabı ₺1.500 eksiye düşebilir"; ek hesap limiti varsa limit içindeki kısım "ek hesaptan kullanabilir", aşanı "limitini aşabilir" diye söylenir.
- Tahmine o hesabın planlı ve düzenli kayıtları, transferleri, ödemeleri ve abonelikleri girer; Nakit akışı'nda günlük harcama açıksa o da. "döküm" her kalemi bakiyesiyle gösterir.

**Ay kapanışı**
- Raporlar › Ay özeti'nden, ayın ilk haftasında Özet'teki "özetin hazır" şeridinden ya da Ayarlar › Veriler ve yedek › Ay kapanışı'ndan. Kapatmadan önce etkisi görünür: kapanan aylar ve işlem sayısı, ayın geliri ve gideri, ay sonu bakiyeleri.
- Kapalı aya işlem eklemek, düzenlemek ya da silmek uyarı verir ve yazılmaz; kapalı aydaki kaydın penceresi salt okunur. İçe aktarmada kapalı ayın satırları seçilemez; düzenli kayıtlar kapalı aylara eklenmez; yedekten birleştirme ve geri yükleme kapalı aylardaki işlemleri değiştirmez.
- Ödemeler, ajanda ve notlar kapalı ayda da değişir. Kapanış yedeğe girer ve öbür cihazlara da geçer.

**Görünüm**
- Ayarlar › Görünüm'ün sonunda Standart görünüme dön: tema, animasyonlar, saydamlık, açılış animasyonu, yazı boyutu, Özet görünümü ve bu cihazdaki öbür görünüm seçimleri varsayılana döner; uygulama simgesi değişmez. Geri alınabilir.
- Kenar çubuğu seçeneği yalnızca kenar çubuğu olan düzende görünür.

**iPhone ve iPad**
- Siri ve Kestirmeler'de "Ajandam gider ekle": tutar sorulur; hesap, kategori ve açıklama isteğe bağlı. Önizlemede onaylayınca Ajandam açılır ve gider bugün tarihiyle kaydedilir, bildirimden geri alınır. PIN açıksa kilit açılınca kaydedilir.
- Eki Hızlı Bakış'ta işaretle (iPad'de kalemle de): orijinal değişmez, işaretli kopya orijinalin arkasına ayrı ek olur; notta orijinalin altına.
- Ayarlar bilgisayardaki düzende: renkli simgeli satırlar, gruplar, satırın sağında değeri; büyük yazıda ad kısalmaz. Sürüm numarası Hakkında'da.
- iPhone'da Ara sekmesi öbür sekmelerle aynı çubukta; seçilince arama alanı hemen açılır.

**Android**
- Android 12 ve sonrasında Ayarlar › Görünüm › Duvar kağıdından renk: vurgu rengi (düğmeler, seçili sekme ve satırlar, bağlantılar) duvar kağıdının renklerinden; duvar kağıdı değişince o da değişir.
- Ayarlar bilgisayardaki düzende: renkli simgeli satırlar, gruplar, satırın sağında değeri.

## [4.2.0] – 2026-11-02

Ajandam 4.2 kayıtlarını cihazlar arasında güvenle taşıman için: başka bir cihazdan gelenleri birleştirirken orada sildiklerin burada da siliniyor, iki cihazda farklı değişen kayıtta hangisinin kalacağını sen seçiyorsun. Yedekten tek tek kayıt geri getirebiliyor, bir hesabın geçmiş bakiyesinin neden değiştiğini görebiliyorsun; Asistan da yapay zeka bağlı değilken ne yapacağını söylüyor. Öne çıkanlar:

- **Güvenli birleştirme:** başka bir cihazın yedeğiyle birleştirince ya da karekodla aktarınca orada silinen kayıtlar burada da silinir (notlar Son silinenler'e gider), burada sildiklerin geri gelmez. İki cihazda farklı değişen kayıtta iki hali yan yana görünür; hangisi kalacak, sen seçersin.
- **Yedekten seçerek geri yükle:** bir yedekten yalnızca istediğin kayıtları ara, buradakiyle farkını gör ve geri getir. Geri alınabilir.
- **Geçmiş bakiye:** hesabın geçmiş bir gündeki bakiyesini seç; o günden sonra eklenen, düzenlenen ya da silinen kayıtlarla bakiyenin neden değiştiği listelenir.
- **Asistan yol gösterir:** yapay zeka bağlı değilse Asistan ne olduğunu ve bu cihazda nasıl bağlanacağını söylüyor; istersen kurallarla devam edersin. ChatGPT'ye ne gönderileceği sormadan önce, gönderilenler cevaptan sonra görünür.
- **Mac App Store'da cam görünüm:** macOS 26'da Mac App Store'dan kurulan Ajandam'da da kenar çubuğu ve başlık arkadaki masaüstünü buzlu cam gibi gösteriyor.
- **Abonelik zammı:** zamlanan abonelikte aylık farkın yanında yıllık fark da.
- **Takvim dosyası ve şifreli yedek her yerden:** .ics dosyası takvim içe aktarmaya, .ajandamyedek geri yükleme önizlemesine gider; dosyayı Ajandam'la açman yeter.
- **Saydamlığı azalt:** menüler, pencere arkaları ve bildirimler sistemin ayarına uyar; Ayarlar › Görünüm › Saydamlık'tan da seçilir.
- **iPhone'da yeni Ayarlar:** iOS'un Ayarlar uygulaması gibi: bölüm sağdan kayarak açılır, kenardan kaydırarak geri dönülür. Anahtarlar ve arama da takılmadan çalışıyor.
- **Android:** Ayarlar Android'in ayarları gibi; bildirim türleri ayrı (Ödemeler ve vadeler, Ajanda, Sabah özeti, Diğer); Android 12 ve öncesinde PIN açıkken son uygulamalar ekranında içerik görünmez. Google Play'deki teste katılmak artık herkese açık.

---

**Yedek ve birleştirme**
- Silme izi: bir cihazda silinen kayıt, yedeği öbür cihazda birleştirilince ya da karekodla aktarılınca orada da silinir (not Son silinenler'e gider); izler 13 ay tutulur. Öbür cihazda 4.2'den eski bir Ajandam varsa birleştirme eskisi gibi yalnızca ekler.
- Orada silinmiş ama burada sonradan değişmiş kayıt burada kalır; önizleme kaç tane olduğunu söyler. Tek Geri al hepsini geri getirir.
- Yedekten geri yükle silme izlerine bakmaz: kendi yedeğinden sildiğin bir kaydı geri getirmenin yolu o.
- Çakışma: iki cihazda son birleştirmeden sonra farklı değişen kayıt için iki hali yan yana (en çok 20, yeni olan seçili); seçtiğin hal kalır. İlk birleştirmede çakışma aranmaz.
- Önizleme, eki (fiş, fatura) gelmeyecek kayıtları örnekle ve ekleri getirmenin yoluyla gösterir.
- Seçerek geri yükle: yedekteki kayıtlar açıklamaya, tutara, tarihe ya da notun metnine göre aranır; burada da duran kayıtta neyin değişeceği alan alan görünür. Yalnızca seçtiklerin (arşivse ekleriyle) gelir; öbür kayıtlara ve ayarlara dokunulmaz.

**Hesaplar ve abonelikler**
- Hesap ayrıntısında Geçmiş bakiye: bir gün seç; o günün sonundaki bakiye ve o günden sonra onu değiştiren kayıtlar etkileriyle ("Bakiye neden değişti?").
- Abonelik zammında kayıt anındaki satır, abonelik rozeti ve ay özeti yıllık farkı da söylüyor: "₺229,99 → ₺259,99 (+₺30; yılda +₺360)". Kur farkı yine zam sayılmaz.

**Asistan**
- Yapay zeka bağlı değilken Asistan "Asistan şu an yapay zekasız" kartıyla açılıyor: bu cihazda olan bağlanma yolları, Ayarlar › Yapay zeka ve Kurallarla devam et. Kurallarla cevaplanan örnek sorular kartın altında.
- ChatGPT girişi beklenirken, hesabın oturumu kapanmışsa ya da oturum bilgisine erişilemiyorsa kart ne yapılacağını söylüyor; durum değişince Asistan kendiliğinden yenileniyor.
- ChatGPT'ye sormadan önce "Ne gönderilecek?": soru ve gidecek kayıt özetleri; Vazgeç'te istek gitmez. Cevaptan sonra her turda gönderilenler. Bilgisayardaki ve cihaz içi modelde liste yok (dışarı istek gitmez).

**Dosyalar**
- Mac'te şifreli yedek (.ajandamyedek) Finder'da çift tıklayınca Ajandam'da açılıyor; takvim dosyası (.ics) Birlikte Aç › Ajandam ile.
- iPhone ve iPad'de Dosyalar'dan ve paylaş menüsünden takvim dosyası ve şifreli yedek.
- Windows'ta Dosya Gezgini'nin Birlikte aç listesinde takvim dosyası ve şifreli yedek.
- Android'de Birlikte aç ve Paylaş ile takvim dosyası ve şifreli yedek.

**Ayarlar**
- iPhone'da Ayarlar iOS'un Ayarlar uygulaması gibi: gruplu kartlar, açıklamalar kartın altında küçük not, anahtarlar ve seçili değerler sağda, iOS'un seçim düğmeleri. Bölüm sağdan kayarak açılır; ‹ Ayarlar'la ya da ekranın sol kenarından sağa kaydırarak listeye dönülür.
- iPad'de Ayarlar'ın kartları koyu zeminde, iPadOS'un ayarlarındaki gibi.
- Bir anahtara dokununca bölüm baştan çizilmiyor: anahtar kayarak değişir, sayfa olduğu yerde kalır, ekran takılmaz.
- Ayarlarda arama sonuçları yazmaya ara verince gelir; tek harfle yalnızca ayarların adlarında arar.
- En büyük yazı boyutunda seçim düğmeleri alt alta.
- Android'de Ayarlar Android'in ayarları gibi: bölümler açıklamalarıyla iki satırlı listede, satırlar aralıklı gruplarda, Android'in anahtarları ve seçim düğmeleri; bölüm yatay kayarak açılır, ← ya da geri tuşuyla dönülür.

**Görünüm ve erişilebilirlik**
- Ayarlar › Görünüm › Saydamlık: Sisteme göre, Saydam, Düz (bu cihazda). Düz'de menüler, pencere arkaları, bildirimler ve üst çubuk düz renk; yazılar daha net okunur.
- Sisteme göre: Mac'te Saydamlığı azalt ayarına uyar.
- Sisteme göre: iPhone'da ve iPad'de Saydamlığı azalt ayarına uyar.
- Windows'ta Saydamlık efektleri ayarına uyar.
- Mac App Store'dan kurulan Ajandam'da macOS 26 ve sonrasında cam görünüm; Ayarlar › Görünüm › Cam görünüm'den kapatılır.

**Android**
- Bildirim türleri: Ödemeler ve vadeler, Ajanda, Sabah özeti, Diğer hatırlatmalar; her birinin sesi, titreşimi ya da kapatılması Android ayarlarından ayrı ayrı (Ayarlar › Bildirimler › Bildirim türleri).
- Android 12 ve öncesinde PIN açıkken son uygulamalar ekranında içerik görünmez; o sürede ekran görüntüsü de alınmaz (Android 13 ve sonrasında içerik zaten hiç görünmüyor).
- Google Play'deki teste katılmak için davet gerekmiyor: önce Ajandam Test grubuna katıl, sonra test sayfasından katılıp Google Play'den kur (indirme sayfasında iki adım).

**Düzeltmeler**
- Android'de uygulamanın içindeki sürüm notlarında Android'e ait maddeler de görünüyor.

## [4.1.0] – 2026-11-02

Ajandam 4.1 telefonları ve tabletleri baştan düzenliyor: pencereler telefonda tam ekran, Ayarlar telefondaki Ayarlar uygulaması gibi. Cihazlar arasında karekodla aktarım geldi; bildirimler artık senin elinde. Öne çıkanlar:

- **Telefonda pencereler tam ekran:** yeni kayıt, Ayarlar ve diğer pencereler ekranın tamamında açılıyor. Ayarlar telefonda önce bölümlerin listesi; dokununca bölüm açılıyor, "‹ Ayarlar" ya da geri tuşu listeye döndürüyor. Tablette Ayarlar ekranın yüksekliğini kullanıyor.
- **Karekodla aktarım:** Ayarlar › Veriler ve yedek › Başka cihaza aktar. Bilgisayar ya da telefon karekod gösterir, öbür telefon okutur; kayıtların ve eklerin aynı Wi-Fi'de doğrudan, şifreli geçer, internete çıkmaz. Gelenler uygulanmadan önce neyin değişeceği gösterilir.
- **Android'de Google Drive'a otomatik yedek:** Drive'da bir yer seç, Ajandam yedeğini her gün oraya yazar; telefon değişince Yedekten geri yükle ile dönersin. Google hesabını Ajandam'a bağlaman gerekmez.
- **Android'e gelenler:** bildirimden Ödendi ve Yarın hatırlat, yazdırma ve PDF olarak kaydetme, yedek parolasıyla şifreli yedek, başka uygulamalardan paylaşılan ekstre ve dökümleri içe aktarma, simgeye basılı tutunca hızlı eylemler, telefonun yazı boyutunu izleme.
- **Telefonda uygulama simgesi:** Ayarlar › Görünüm'den Lacivert, Gece, Turuncu ya da Beyaz.
- **Bildirimler:** her bildirim × ile ya da yana kaydırarak kapanıyor; Ayarlar › Bildirimler'den kendiliğinden kapansın, daha uzun kalsın ya da sen kapatana kadar kalsın.
- **iPhone ve iPad:** bildirimden Ödendi ve Yarın hatırlat; simgeye basılı tutunca hızlı eylemler.
- **Windows'ta simge anında:** seçtiğin simge görev çubuğunda hemen değişiyor; ödeme hatırlatmaları sen kapatana kadar ekranda kalıyor.

---

**Telefon ve tablet**
- Pencereler telefonda tam ekran: başlık ve kapatma üstte, düğmeler altta, arası kayıyor; onay soruları ortada küçük kart.
- Ayarlar telefonda liste ve bölüm olarak; aramada sonuçlar listenin yerinde.
- Telefonda sekme şeridi ve başlıktaki ikinci + yok; alt satır yalnızca kayıt yazılamadığında görünüyor.
- iPhone ve iPad'de tarih alanı sütununa sığıyor.
- Tablette Ayarlar ekranın yüksekliğini kullanıyor.
- Güncellemeden sonra tanıtım yeniden açılmıyor; bu sürümde gelenler gösteriliyor.
- Bildirim düğmeleri: ödemede Ödendi ve Yarın hatırlat, kart ekstresinde Öde…, etkinlik ve yapılacaklarda 10 dk ertele ve Yapıldı; dokununca Ajandam açılıp işaretler.

**Cihazlar arası aktarım**
- Bir cihaz karekod gösterir (5 dakika geçerli, tek kullanımlık), öbürü okutur. Gönderen taraf göndermeden önce onay ister; alan taraf uygulamadan önce neyin değişeceğini gösterir.
- Kayıtlar, notlar ve ekler şifreli gider; anahtar yalnızca karekodda, ağdan geçmez.
- Bilgisayar karekodu gösterir, telefon ya da tablet okutur; iki bilgisayar arasında Yedek indir ve Yedekten geri yükle.

**Bildirimler**
- Uygulamanın içindeki her bildirimde kapatma düğmesi; dokunmatik ekranda yana kaydırınca kapanıyor.
- Ayarlar › Bildirimler › Uygulama içi bildirimler: birkaç saniye sonra kapansın, daha uzun kalsın ya da sen kapatana kadar kalsın (bu cihazda).
- Windows'ta ödeme ve kart hatırlatmaları da sen bir düğmeye basana ya da kapatana kadar ekranda kalıyor.

**iPhone ve iPad**
- Uygulama simgesi seçimi (Ayarlar › Görünüm).
- Ana ekrandaki simgeye basılı tutunca: Yazarak ekle, Gider ekle, Gelir ekle, Ekstre içe aktar.
- Dosyalar'dan ve paylaş menüsünden ekstre, döküm ve fiş açılıyor; yedek dosyası geri yükleme önizlemesiyle açılıyor.
- Karekodu Ajandam'ın kendisi okuyor; kamera uygulamasıyla okutulan karekod da Ajandam'ı açıyor.
- iPad'de donanım klavyesiyle ⌘N yeni gider, ⌘F arama, ⌘, Ayarlar.
- Bildirimden Ödendi ve Yarın hatırlat (bildirimi basılı tut ya da aşağı çek).

**Android**
- Google Drive'a (ya da OneDrive, Dropbox gibi seçtiğin bir yere) her gün otomatik yedek; yedek parolası varsa şifreli.
- Ayarlar telefonun kendi Google yedeğini de anlatıyor: ekran kilidi varken kayıtlar Google hesabına uçtan uca şifreli gider.
- Bildirimdeki düğmeler: Ödendi, Yarın hatırlat, Öde…, 10 dk ertele, Yapıldı.
- Yazdırma ve PDF olarak kaydetme; yedek parolasıyla şifreli yedek.
- Başka uygulamalardan paylaşılan ya da "Birlikte aç"la açılan PDF, Excel ve CSV dökümleri ve yedekler Ajandam'da açılıyor; paylaşılan banka SMS'i hızlı eklemeye gidiyor.
- Karekodu Ajandam'ın kendisi okuyor (kamera izniyle; görüntü telefondan çıkmaz).
- Simgeye basılı tutunca hızlı eylemler; uygulama simgesi seçimi; telefonun yazı tipi boyutunu izleme (Ayarlar › Görünüm › Yazı boyutu › Sisteme göre).

**Windows**
- Uygulama simgesi görev çubuğunda hemen değişiyor; sabitlenmiş simge birkaç saniye içinde yenileniyor.
- Karekodla aktarımda Windows güvenlik duvarı izin isterse ne yapılacağı yazıyor; Microsoft Store sürümünde izin gerekmiyor.

**Düzeltmeler**
- Yapay zeka sağlayıcılarına ulaşılamadığında Ayarlar durmadan yeniden çizilmiyor.
- Yenilikler penceresinde yalnızca 4.0 ve sonrası.

## [4.0.0] – 2026-11-01

Ajandam 4 telefonlara açılıyor: yapay zeka artık telefonda ve tablette de var; güvenlik baştan sona gözden geçirildi. Öne çıkanlar:

- **Telefonlarda yapay zeka:** **ChatGPT ile giriş** (ChatGPT Plus ya da Pro): Asistan, ekstre okuma, ay yorumu ve "Ajandam'a sor" telefonda da çalışıyor. Oturum cihazın güvenli anahtar deposunda, "Tüm verileri sil" onu da siliyor.
- **Android (yeni):** telefon ve tablette Ajandam; kayıtlar cihazda, Google Play'den ya da GitHub'daki APK ile kurulur. ChatGPT ile giriş, parmak izi ya da yüzle açma, bildirimler, ekstre ve döküm içe aktarma, Türkiye verileri var.
- **Bilgisayarda uygulama simgesi:** mağazadan kurulan Ajandam'da simge seçimi yalnızca uygulamanın içinde geçerli; sistemdeki simgenin neden değişmediği Ayarlar'da yazıyor. İndirilen baskılarda simge eskisi gibi değişiyor.
- **Güvenlik:** ekstre, döküm, defter ve yedek dosyalarından gelen her metin sayfaya güvenle yazılıyor; yedekten dönüş yapay zeka uygulamalarının izinlerini ve otomatik onayı getirmiyor; yedek parolasının anahtarı okunamazsa kopyalar şifresiz yazılmıyor.
- **Açılış:** Ajandam artık her açılışta yeni açılış animasyonuyla açılıyor: simge bulanıktan netleşir, üstünden bir ışıltı geçer, adı yazılır, bir halka yayılır, altta sürüm numarası; kayıtlar hazır olunca simge yerine süzülür ve ekran yerleşir (yaklaşık bir buçuk saniye; tıklama ya da tuş hemen bitirir). İstersen Ayarlar › Görünüm'den yalnızca güncellemeden sonra oynasın ya da kapalı olsun; Hareketi azalt açıkken kısa bir solma.

---

**Açılış (her platform)**
- Açılış animasyonu her açılışta: arka planda yavaşça kayan ışık, bulanıktan netleşen simge ve harfler, simgeden dışarı yayılan halka, simgenin üstünden geçen ışıltı, altta sürüm numarası; sonra simge yerine süzülür, ekran parça parça yerleşir.
- Ayarlar › Görünüm › Açılış animasyonu: Her açılışta (varsayılan), Güncellemeden sonra ya da Kapalı (yalnızca kısa solma); tercih bu cihazda. Hareketi azalt / Sade'de her kipte kısa solma; tıklama, tuş ve bildirimden gelen iş animasyonu hemen bitirir.

**iPhone ve iPad**
- ChatGPT ile giriş: giriş sayfası uygulamanın içinde, oturum Anahtar Zinciri'nde; Ayarlar › Yapay zeka'da Apple Intelligence ve ChatGPT yan yana; Asistan, ekstre okuma, ay yorumu ve "Ajandam'a sor" ChatGPT'yle.
- Apple Intelligence satırında Apple'ın simgesi.
- Gizlilik: ChatGPT'ye yalnızca sen giriş yaptıysan, kişisel bilgiler gizlenerek gidiyor; Ayarlar › Gizlilik'te yazıyor.
- İlk açılıştaki tanıtımda Asistan kartı: Apple Intelligence yoksa ChatGPT ile giriş.

**Android**
- İlk sürüm (Google Play kapalı testinden; GitHub'da APK): telefon ve tablet düzeni, geri tuşu, kenardan kenara görünüm, koyu tema.
- Parmak izi ya da yüzle açma ("PIN'ini mi unuttun?" cihazın ekran kilidiyle); zamanlanmış bildirimler; ekstre, döküm ve defter içe aktarma; ekler; Türkiye verileri; e-postayla geri bildirim.
- Google yedeğine yalnızca kayıtlar ve yalnızca ekran kilidi varken uçtan uca şifreli gidiyor; Ajandam'ın günlüğü ve ChatGPT oturumu gitmiyor.
- ChatGPT ile giriş: oturum cihazın güvenli anahtar deposunda şifreli; giriş sayfası tarayıcıda açılıyor, dönünce Ajandam öne geliyor (Ajandam kilitliyse önce kilit açılıyor).
- İlk açılıştaki tanıtımda Asistan kartı (ChatGPT ile giriş).
- Gizlilik politikası Android'de yapay zekayı da anlatıyor.

**Mac**
- Mac App Store'dan kurulan Ajandam'da uygulama simgesi seçimi yalnızca pencerede geçerli; Dock simgesinin neden değişmediği Ayarlar'da yazıyor. İndirilen Ajandam'da simge eskisi gibi değişiyor.
- Apple Intelligence satırında Apple'ın simgesi.
- "Ajandam'a sor" ve ay yorumu Apple Intelligence yoksa Ayarlar'da seçili sağlayıcıyla (ChatGPT ya da yerel model) çalışıyor.
- Yardım › Yenilikler'de 4.0 kartları.

**Windows**
- Microsoft Store'dan kurulan Ajandam'da uygulama simgesi seçimi yalnızca pencerede geçerli; Başlat menüsü simgesinin neden değişmediği Ayarlar'da yazıyor. Kurulum dosyasıyla kurulan Ajandam'da simge eskisi gibi değişiyor.
- Başka bir yapay zeka uygulamasının ayar dosyasına Ajandam eklenmeden ya da çıkarılmadan önce Ajandam kendi penceresinde soruyor.
- Kurulum: gerekli Microsoft bileşeni indirilirken imzası doğrulanıyor; önceki sürüm kaldırılınca artakalan dosyalar temizleniyor.
- Yedek parolasının anahtar dosyası okunamıyorsa kopyalar şifresiz yazılmıyor, Ayarlar "erişilemedi" diyor.
- Yardım › Yenilikler'de 4.0 kartları.

**Düzeltmeler**
- Ekstre okuma: ABD biçimli tutarlar ("1,150.00") ve virgüllü binlikler ("5,400,59") tek tutar olarak okunuyor; eskiden 1.150 TL'lik harcama 1,15 TL kaydedilebiliyordu.
- Kayıt dosyası yazılamayınca ("Bağlantını kontrol et" yerine) nedenin klasör izni ya da disk sorunu olabileceği, Ajandam'ın yeniden deneyeceği ve yedek alınması söyleniyor.

**Güvenlik**
- Hesap kartında, içe aktarma önizlemesinde, ekstre satırlarında ve formlarda dosyalardan gelen metinler güvenle gösteriliyor.
- Yedekten ya da başka bir uygulamadan gelen bozuk kayıtlar Ajandam'ın işleyişini değiştiremiyor.
- Yedekten dönüş yapay zeka uygulamalarının izinlerini, otomatik onayı ve buluta gönderme iznini yedekten almıyor; bu cihazdakiler kalıyor.
- PIN ayarı yedeğe girmiyor ve yedekten dönmüyor.
- Yedek parolasının anahtarı okunamıyorsa ya da çözülemiyorsa kopyalar şifresiz yazılmıyor, durum "erişilemedi".

**Belgeler**
- Gizlilik politikası: ChatGPT ile giriş her platformda ve oturumun nerede saklandığı.
