# Yenilikler

Ajandam'ın sürüm notları. Her sürümün ilk bölümü uygulama içindeki güncelleme penceresinde de gösterilir.
Sürüm numaraları [anlamsal sürümlemeye](https://semver.org/lang/tr/) uyar.

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
