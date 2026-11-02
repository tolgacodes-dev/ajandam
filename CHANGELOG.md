# Yenilikler

Ajandam'ın sürüm notları. Her sürümün ilk bölümü uygulama içindeki güncelleme penceresinde de gösterilir.
Sürüm numaraları [anlamsal sürümlemeye](https://semver.org/lang/tr/) uyar.

## [4.2.0] – 2026-11-02

Ajandam 4.2 kayıtlarını cihazlar arasında güvenle taşıman için: başka bir cihazdan gelenleri birleştirirken orada sildiklerin burada da siliniyor, iki cihazda farklı değişen kayıtta hangisinin kalacağını sen seçiyorsun. Yedekten tek tek kayıt geri getirebiliyor, bir hesabın geçmiş bakiyesinin neden değiştiğini görebiliyorsun; Asistan da yapay zeka bağlı değilken ne yapacağını söylüyor. Öne çıkanlar:

- **Güvenli birleştirme:** başka bir cihazın yedeğiyle birleştirince ya da karekodla aktarınca orada silinen kayıtlar burada da silinir (notlar Son silinenler'e gider), burada sildiklerin geri gelmez. İki cihazda farklı değişen kayıtta iki hali yan yana görünür; hangisi kalacak, sen seçersin.
- **Yedekten seçerek geri yükle:** bir yedekten yalnızca istediğin kayıtları ara, buradakiyle farkını gör ve geri getir. Geri alınabilir.
- **Geçmiş bakiye:** hesabın geçmiş bir gündeki bakiyesini seç; o günden sonra eklenen, düzenlenen ya da silinen kayıtlarla bakiyenin neden değiştiği listelenir.
- **Asistan yol gösterir:** yapay zeka bağlı değilse Asistan ne olduğunu ve bu cihazda nasıl bağlanacağını söylüyor: ChatGPT ile giriş, Apple Intelligence'ı nereden açacağın ya da bilgisayarındaki model; istersen kurallarla devam edersin. ChatGPT'ye ne gönderileceği sormadan önce, gönderilenler cevaptan sonra görünür.
- **Mac App Store'da cam görünüm:** macOS 26'da Mac App Store'dan kurulan Ajandam'da da kenar çubuğu ve başlık arkadaki masaüstünü buzlu cam gibi gösteriyor.
- **Abonelik zammı:** zamlanan abonelikte aylık farkın yanında yıllık fark da.
- **Takvim dosyası ve şifreli yedek her yerden:** .ics dosyası takvim içe aktarmaya, .ajandamyedek geri yükleme önizlemesine gider; bilgisayarda dosya yöneticisinden, telefonda ve tablette Dosyalar'dan ya da paylaşmayla.
- **Saydamlığı azalt:** menüler, pencere arkaları ve bildirimler sistemin ayarına uyar; Ayarlar › Görünüm › Saydamlık'tan da seçilir.
- **Telefonda yeni Ayarlar:** iPhone'da Ayarlar iOS'un Ayarlar uygulaması gibi: bölüm sağdan kayarak açılır, kenardan kaydırarak geri dönülür. Anahtarlar ve arama da takılmadan çalışıyor.
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
- Yapay zeka bağlı değilken Asistan "Asistan şu an yapay zekasız" kartıyla açılıyor: bu cihazda olan yollar (ChatGPT ile giriş, Apple Intelligence'ın açıldığı yer, bilgisayarındaki model), Ayarlar › Yapay zeka ve Kurallarla devam et. Kurallarla cevaplanan örnek sorular kartın altında.
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
- Sisteme göre: Mac'te, iPhone'da ve iPad'de Saydamlığı azalt ayarına uyar.
- Windows'ta Saydamlık efektleri ayarına uyar.
- Mac App Store'dan kurulan Ajandam'da macOS 26 ve sonrasında cam görünüm; Ayarlar › Görünüm › Cam görünüm'den kapatılır.

**Android**
- Bildirim türleri: Ödemeler ve vadeler, Ajanda, Sabah özeti, Diğer hatırlatmalar; her birinin sesi, titreşimi ya da kapatılması Android ayarlarından ayrı ayrı (Ayarlar › Bildirimler › Bildirim türleri).
- Android 12 ve öncesinde PIN açıkken son uygulamalar ekranında içerik görünmez; o sürede ekran görüntüsü de alınmaz (Android 13 ve sonrasında içerik zaten hiç görünmüyor).
- Google Play'deki teste katılmak için davet gerekmiyor: önce Ajandam Test grubuna katıl, sonra test sayfasından katılıp Google Play'den kur (indirme sayfasında iki adım).

**Düzeltmeler**
- Android'de uygulamanın içindeki sürüm notlarında Android'e ait maddeler de görünüyor.

## [4.1.0] – 2026-11-02

Ajandam 4.1 telefonları ve tabletleri baştan düzenliyor: pencereler telefonda tam ekran, Ayarlar telefondaki Ayarlar uygulaması gibi. Cihazlar arasında karekodla aktarım geldi; Android'e Google Drive yedeği, yazdırma ve şifreli yedek eklendi; bildirimler artık senin elinde. Öne çıkanlar:

- **Telefonda pencereler tam ekran:** yeni kayıt, Ayarlar ve diğer pencereler ekranın tamamında açılıyor. Ayarlar telefonda önce bölümlerin listesi; dokununca bölüm açılıyor, "‹ Ayarlar" ya da geri tuşu listeye döndürüyor. iPhone ve iPad'de tarih alanı artık taşmıyor; tablette Ayarlar ekranın yüksekliğini kullanıyor.
- **Karekodla aktarım:** Ayarlar › Veriler ve yedek › Başka cihaza aktar. Bilgisayar ya da telefon karekod gösterir, öbür telefon okutur; kayıtların ve eklerin aynı Wi-Fi'de doğrudan, şifreli geçer, internete çıkmaz. Gelenler uygulanmadan önce neyin değişeceği gösterilir.
- **Android'de Google Drive'a otomatik yedek:** Drive'da bir yer seç, Ajandam yedeğini her gün oraya yazar; telefon değişince Yedekten geri yükle ile dönersin. Google hesabını Ajandam'a bağlaman gerekmez.
- **Android'e gelenler:** bildirimden Ödendi ve Yarın hatırlat, yazdırma ve PDF olarak kaydetme, yedek parolasıyla şifreli yedek, başka uygulamalardan paylaşılan ekstre ve dökümleri içe aktarma, simgeye basılı tutunca hızlı eylemler, telefonun yazı boyutunu izleme.
- **Telefonda uygulama simgesi:** iPhone, iPad ve Android'de Ayarlar › Görünüm'den Lacivert, Gece, Turuncu ya da Beyaz.
- **Bildirimler:** her bildirim × ile ya da yana kaydırarak kapanıyor; Ayarlar › Bildirimler'den kendiliğinden kapansın, daha uzun kalsın ya da sen kapatana kadar kalsın. Telefonda ve tablette de bildirimden Ödendi ve Yarın hatırlat.
- **Windows'ta simge anında:** seçtiğin simge görev çubuğunda hemen değişiyor; ödeme hatırlatmaları sen kapatana kadar ekranda kalıyor.

---

**Telefon ve tablet**
- Pencereler telefonda tam ekran: başlık ve kapatma üstte, düğmeler altta, arası kayıyor; onay soruları ortada küçük kart.
- Ayarlar telefonda liste ve bölüm olarak; aramada sonuçlar listenin yerinde.
- Telefonda sekme şeridi ve başlıktaki ikinci + yok; alt satır yalnızca kayıt yazılamadığında görünüyor.
- iPhone ve iPad'de tarih alanı sütununa sığıyor.
- Tablette Ayarlar ekranın yüksekliğini kullanıyor.
- Güncellemeden sonra tanıtım yeniden açılmıyor; bu sürümde gelenler gösteriliyor.

**Cihazlar arası aktarım**
- Bir cihaz karekod gösterir (5 dakika geçerli, tek kullanımlık), öbürü okutur. Gönderen taraf göndermeden önce onay ister; alan taraf uygulamadan önce neyin değişeceğini gösterir.
- Kayıtlar, notlar ve ekler şifreli gider; anahtar yalnızca karekodda, ağdan geçmez.
- Bilgisayar karekodu gösterir, telefon ya da tablet okutur; iki bilgisayar arasında Yedek indir ve Yedekten geri yükle.

**Bildirimler**
- Uygulamanın içindeki her bildirimde kapatma düğmesi; dokunmatik ekranda yana kaydırınca kapanıyor.
- Ayarlar › Bildirimler › Uygulama içi bildirimler: birkaç saniye sonra kapansın, daha uzun kalsın ya da sen kapatana kadar kalsın (bu cihazda).
- Windows'ta ödeme ve kart hatırlatmaları da sen bir düğmeye basana ya da kapatana kadar ekranda kalıyor.
- iPhone, iPad ve Android'de de bildirim düğmeleri: ödemede Ödendi ve Yarın hatırlat, kart ekstresinde Öde…, etkinlik ve yapılacaklarda 10 dk ertele ve Yapıldı; dokununca Ajandam açılıp işaretler.

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

Ajandam 4 telefonlara açılıyor: yapay zeka artık telefonda ve tablette de var, Android'de de Ajandam var, mağazadan kurulan Ajandam'da uygulama simgesi ne yapabildiğini açıkça söylüyor; güvenlik baştan sona gözden geçirildi. Öne çıkanlar:

- **Telefonlarda yapay zeka:** iPhone ve iPad'de **ChatGPT ile giriş** (ChatGPT Plus ya da Pro): Asistan, ekstre okuma, ay yorumu ve "Ajandam'a sor" telefonda da çalışıyor; Apple Intelligence varsa önce o. Oturum cihazın güvenli anahtar deposunda, "Tüm verileri sil" onu da siliyor.
- **Android (yeni):** telefon ve tablette Ajandam; kayıtlar cihazda, Google Play'den ya da GitHub'daki APK ile kurulur. ChatGPT ile giriş, parmak izi ya da yüzle açma, bildirimler, ekstre ve döküm içe aktarma, Türkiye verileri var.
- **Uygulama simgesi:** mağazadan kurulan Ajandam'da simge seçimi yalnızca uygulamanın içinde geçerli; Dock ya da Başlat menüsü simgesinin neden değişmediği Ayarlar'da yazıyor. İndirilen baskılarda simge eskisi gibi değişiyor. Apple Intelligence satırında Apple'ın kendi simgesi.
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

**Mac**
- Mac App Store'dan kurulan Ajandam'da uygulama simgesi seçimi yalnızca pencerede geçerli; Dock simgesinin neden değişmediği Ayarlar'da yazıyor. İndirilen Ajandam'da simge eskisi gibi değişiyor.
- Apple Intelligence satırında Apple'ın simgesi.
- "Ajandam'a sor" ve ay yorumu Apple Intelligence yoksa Ayarlar'da seçili sağlayıcıyla (ChatGPT ya da yerel model) çalışıyor.
- Yardım › Yenilikler'de 4.0 kartları.

**Windows**
- Microsoft Store'dan kurulan Ajandam'da uygulama simgesi seçimi yalnızca pencerede geçerli; Başlat menüsü simgesinin neden değişmediği Ayarlar'da yazıyor. Kurulum dosyasıyla kurulan Ajandam'da simge eskisi gibi değişiyor.
- Başka bir yapay zeka uygulamasının ayar dosyasına Ajandam eklenmeden ya da çıkarılmadan önce Ajandam kendi penceresinde soruyor (Mac'teki gibi).
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
- Gizlilik politikası: ChatGPT ile giriş her platformda, oturumun nerede saklandığı; Android'de yapay zeka.
