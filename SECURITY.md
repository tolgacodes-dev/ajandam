# Güvenlik

## Açık bildirmek

Ajandam'da bir güvenlik açığı bulduysan lütfen ayrıntıları herkese açık bir Issue'ya yazma. GitHub'ın
[özel güvenlik bildirimi](https://github.com/tolgacodes-dev/ajandam/security/advisories/new) sayfasını kullan;
o sayfa açılmazsa ayrıntı vermeden bir Issue açıp ulaşmak istediğini yaz ya da ajandamuygulamasi@gmail.com adresine
e-posta gönder. Etkilenen sürüm, işletim sistemi (macOS ya da Windows sürümü) ve adım adım nasıl tekrarlanacağı işi
hızlandırır.

## Desteklenen sürümler

Yalnızca en son sürüm güvenlik düzeltmesi alır. Ajandam yeni sürümü arka planda indirip doğruladığı ve (kapatılmadıysa)
kendiliğinden kurduğu için çoğu kullanıcı düzeltmeyi birkaç gün içinde alır. Windows'ta bilgisayardaki herkes için kurulu
Ajandam güncellemeyi hazır olunca haber verir; kurmak için **Şimdi kur** ve Windows'un izni gerekir.

## Ajandam'ın güvenlik modeli

- **Veriler:** Kayıtlar Mac'te `~/Library/Application Support/Ajandam`, Windows'ta `%APPDATA%\Ajandam` altında,
  yalnızca senin kullanıcı hesabının okuyabildiği dosyalarda durur. Ajandam bir sunucuya kayıt göndermez; hesap,
  reklam, izleme kodu ya da kullanım istatistiği yoktur.
- **Kurulum (3.8):** Windows'ta Ajandam varsayılan olarak yalnızca o kullanıcı için, kullanıcının programlar klasörüne
  (`%LOCALAPPDATA%\Programs\Ajandam`) kurulur; yönetici izni istemez ve program dosyaları (3.7 ve öncesinde olduğu
  gibi) o kullanıcının yazabildiği bir klasördedir. Kurulumda **Bu bilgisayardaki herkes için** seçilirse Program
  Files'a kurulur: program dosyalarını yalnızca yöneticiler değiştirebilir, kurulum, güncelleme ve kaldırma Windows'un
  yönetici iznini (UAC) ister. Yönetici izniyle çalışan kurulum kullanıcıya ait işleri (kısayollar, kayıt defterindeki
  kullanıcı kayıtları, kayıtların silinmesi) yapmaz; onları kurulumu başlatan kullanıcının süreci yapar. Herkesin
  kayıtları kendi hesabında kalır; kaldırırken **Kayıtlarımı da sil** yalnızca kaldıran kullanıcının kayıtlarını siler.
  Kurulum dosyası bir sertifika kuruluşunca imzalı değildir (izin penceresinde "Bilinmeyen yayımcı" görünür); özeti
  her sürümün `SHA256SUMS` dosyasındadır. Mac'te disk görüntüsünden ya da İndirilenler'den açılan Ajandam Uygulamalar
  klasörüne taşınmayı önerir; taşıdığı kopyanın karantina işaretini kaldırır (kullanıcı onu zaten açmıştır).
- **Kapanış:** Ajandam kapanırken bekleyen kayıtların yazılmasını en çok 12 saniye bekler. Kaydedilemeyen bir değişiklik
  kalırsa (disk dolu ya da veri klasörüne yazılamadı) nedenini söyler ve açık kalmayı önerir; varsayılan düğme
  Ajandam'ı açık tutar (Windows'ta Esc ve pencerenin X'i de). Böyle bir değişiklik varken güncelleme kendiliğinden kurulmaz. Oturum ya da bilgisayar
  kapanırken soru sorulmaz: Ajandam yazımları sınırlı süre bekleyip kapanır (Windows'ta en çok 4 saniye).
- **Yedekler:** Günlük yedekler aynı klasörde durur (son 14 gün; 3.9'dan ayrıca son 8 haftanın ve 12 ayın birer yedeği).
  iCloud Drive (Windows'ta OneDrive) yedeğini açarsan yedekler kendi bulut hesabına da kopyalanır; Ayarlar › Veriler ve
  yedek › Yedek klasörü'nde bir klasör seçersen (USB bellek, ağ diski, Dropbox) her gün JSON yedeği ve SHA-256 özeti,
  haftada bir ekleriyle arşiv oraya da yazılır. Yedeklerde kayıtların ve fiş/fatura eklerin vardır; PIN ve kilit ayarları
  yedeğe girmez, bir yedeğe dönmek şimdiki PIN'i değiştirmez ya da kaldırmaz. **Yedek parolası belirlemediysen yedekler
  şifrelenmez:** günlük yedekler, iCloud Drive ve OneDrive'daki ve yedek klasöründeki kopyaları düz JSON'dur, **Yedek
  indir**'in arşivi (.zip) de şifrelenmez (içindeki yedek.json düz JSON, ekler olduğu gibi; yalnızca PIN belgesi, yapay zeka
  önerileri ve fiyat önbelleği girmez; JSON yedek indir'in dosyası da düz JSON). Ekler (fiş, fatura, nottaki resim ve
  PDF'ler) her yerde olduğu gibi kopyalanır. Arşivdeki SHA-256 özetleri ve `.sha256` dosyaları bozulmayı ya da yarım kopyayı
  yakalar, değiştirmeye karşı koruma değildir. Bu dosyalara, yedek klasörüne ya da bulut hesabına erişebilen biri
  kayıtlarını okuyabilir: yedek parolası belirle (aşağıda), bulut hesabını güçlü bir parolayla ve iki adımlı doğrulamayla
  koru, indirdiğin arşivi ve yedek klasörünü (USB belleği) güvendiğin bir yerde sakla. **Tüm verileri sil** (önce sorar) bu
  bilgisayarın yedeklerini, bulut yedeklerini, yedek klasöründeki kopyalarını (klasöre ulaşılabiliyorsa; değilse söyler) ve
  eklerini de siler.
- **Şifreli yedek (3.9):** Ayarlar › Veriler ve yedek › **Yedek parolası** belirlersen bu cihazdan çıkan kopyalar
  şifrelenir (`.ajandamyedek`): **Yedek indir**'in arşivi, iCloud Drive ya da OneDrive kopyası ve yedek klasörüne yazılanlar
  (her gün kayıtlar, haftada bir ekleriyle arşiv); ilk şifreli kopyadan sonra bu cihazın oradaki şifresiz kopyaları silinir.
  İçerik AES-256-GCM ile şifrelenir. Anahtarı her dosyada yeni ve rastgeledir; yedek parolasının ve kurulurken bir kez
  gösterilen kurtarma anahtarının (24 harf, 120 bit) PBKDF2-SHA256 türevleriyle (600 000 tur) ayrı ayrı sarılır. Her 1 MB'lık
  parça doğrulanır: değiştirilen, kesilen ya da parçalarının yeri değiştirilen dosya açılmaz (dosyanın adı, tarihi ve onu
  yazan cihaz başlıkta açıktır). Yedek parolası not parolasından ayrıdır; güç ölçeri zayıf parolada uyarır. Parola ve
  kurtarma anahtarı hiçbir yerde saklanmaz: ikisini de kaybedersen şifreli kopyalar açılamaz. Kopyaları sormadan yazmak ve
  açmak için yalnızca parolanın ve kurtarma anahtarının türevleri bu cihazda durur (Mac, iPhone ve iPad'de bu cihaza bağlı,
  eşitlenmeyen bir Anahtar Zinciri kaydında; Windows'ta veri koruma özelliğiyle (DPAPI) şifrelenmiş bir dosyada); yedeklere
  ve buluta girmez, **Tüm verileri sil** siler. Yani şifreli yedek kopyalarını bulut hesabına, kaybolan bir USB belleğe ya
  da ağ diskine erişen birine karşı korur; bu cihazda senin hesabınla oturum açmış birine karşı korumaz. Anahtar okunamazsa
  (Mac'te izin istenirse) kopya hiç yazılmaz, şifresiz de; Ayarlar söyler. Veri klasöründeki günlük yedekler şifrelenmez
  (kayıtlarla aynı diskteler). Şifresiz kopyayı yalnızca sen istersen indirirsin (**Yedek indir › Daha fazla › Şifresiz arşiv
  indir** ya da **JSON yedek indir**).
- **Kilit:** PIN kilidi, Touch ID ve Windows Hello Ajandam'ın arayüzünü korur; diskteki dosyaları şifrelemez. Mac'inin
  diskini FileVault, Windows'ta BitLocker (ya da Cihaz şifrelemesi) ile şifrelemeni öneririz. PIN'ini unutursan Mac
  parolanla ya da Windows Hello ile sıfırlarsın; bunlar yoksa kilit ekranı veri klasöründeki `guvenlik.json` dosyasını
  silmeni söyler. Yani PIN, bilgisayarda senin hesabınla oturum açabilen birine karşı koruma değildir. PIN açıksa
  bilgisayar uyuyunca, ekran kilitlenince ya da kullanıcı değişince Ajandam da kilitlenir ve bildirimlerde ödeme adları
  ve tutarlar görünmez (Ayarlar › Bildirimler'den açabilirsin). Ajandam kilitliyken yapay zeka uygulamalarının
  isteklerine cevap verilmez. **Tutarları gizle** yalnızca ekrandaki tutarları gizler; kayıtları şifrelemez. İsteğe bağlı
  **Spotlight'ta göster** (varsayılan kapalı) not ve ajanda başlıklarını Ajandam'ın kilidinin dışında, sistemin aramasında
  gösterir; PIN açıkken dizin boş tutulur.
- **Şifreli notlar:** İstediğin not, not parolanın PBKDF2-SHA256 türeviyle (600 000 tur) AES-256-GCM ile şifrelenir;
  parola hiçbir yerde saklanmaz ve unutulursa not açılamaz. Şifreli notun metni aramaya, yapay zeka uygulamalarına ve
  yedeklere açık hâliyle girmez (yedeklerde şifreli hâli durur). İki istisna: notun şifrelenmeden önceki düz hâli günlük
  yedeklerde (iCloud Drive ve OneDrive kopyalarında da) 30 gün kadar kalabilir; nottaki resimler ve notun ajandaya
  eklenen kayıtları şifrelenmez (Ajandam şifrelerken bunları söyler). Şifreli nottan kopyalanan metin pano geçmişine ve
  bulut panosuna (Mac'te Evrensel Pano'ya) girmez. 3.7'den istersen Touch ID ya da Windows Hello ile açılır: bunun için
  parola değil, parolanın türevi olan anahtar yalnızca o bilgisayarda saklanır (Mac'te eşitlenmeyen bir Anahtar Zinciri
  kaydında, Windows'ta veri koruma özelliğiyle (DPAPI) şifrelenmiş bir dosyada) ve ancak parmak izi ya da yüz
  doğrulamasından sonra okunur. Anahtar yedeklere ve buluta girmez; parola değişince, seçenek kapatılınca ya da **Tüm
  verileri sil** ile silinir. İndirme sayfasından kurulan Mac uygulamasında ve Windows'ta bu bir kolaylıktır: o
  bilgisayarda kullanıcı hesabına giriş yapmış biri çabayla anahtarı okuyabilir. 3.9'dan Mac App Store'dan kurulan Ajandam'da
  anahtar, macOS'un yalnızca Touch ID doğrulanınca verdiği biyometriye bağlı bir Anahtar Zinciri kaydındadır; parmak izleri
  değişince kayıt geçersiz olur ve not parolası bir kez yeniden istenir.
  3.9'dan not parolası belirlenirken ya da değiştirilirken güç ölçeri parolanın gücünü ve kısa nedenini söyler (sık
  kullanılan parolalar, Türkçe ad ve sözcükler, klavye dizileri, tarihler, telefon numaraları); zayıf parola bir kez onay
  ister, hiçbir zaman engellenmez. Ölçer cihazda çalışır, parola hiçbir yere gönderilmez.
- **Uygulama:** Arayüz sıkı bir içerik güvenliği politikasıyla (CSP) açılır: dışarıdan betik yüklenmez, sayfa
  internete doğrudan bağlanamaz. Ajandam'ın köprüsü yalnızca kendi sayfasına cevap verir. Ekler yalnızca fotoğraf ve
  PDF olarak saklanır ve korumalı açılır; fiş fotoğraflarındaki ve geri bildirim ekran görüntülerindeki konum ve cihaz
  bilgisi (EXIF) silinir. CSV'ye aktarmada formül sayılabilecek hücreler metin olarak yazılır. Mac'te uygulama
  Hardened Runtime ile imzalanır; 3.8.1'den imza Apple'ın Developer ID sertifikasıyladır ve uygulama Apple'ın
  onayından geçer (notarization; onay belgesi uygulamaya, disk görüntüsüne ve güncelleme paketine iliştirilir). Web Denetçisi
  yalnızca geliştirme derlemesinde açıktır. Ajandam'ın penceresi kendi
  sayfasından başka bir adrese gidemez; dış bağlantılar tarayıcıda açılır. Mac'te yalnızca tıklanan bağlantı açılır;
  Windows'ta 3.8'den betik sayfayı tıklanmadan dış bir adrese yönlendirirse o adres tarayıcıda açılmaz.
- **Güncellemeler:** Sürümler GitHub Actions'ta derlenip Ajandam'ın kendi imza anahtarıyla imzalanır.
  - Mac: uygulama indirdiği güncellemenin SHA-256 özetini `latest.json` ile, imzasını uygulamaya gömülü sertifika
    parmak iziyle doğrular. Terminal'deki kurulum betiği (`scripts/kur.sh`) de aynı iki denetimi yapar. 3.8'den
    güncelleyici ve `kur.sh`, Ajandam'ın anahtarıyla imzalanmış sürüm bilgisi bir Apple ekip kimliği taşıyorsa o ekibin
    Developer ID sertifikasıyla imzalanmış paketi de kabul eder; ekip kimliği yoksa yalnızca Ajandam'ın kendi
    sertifikasıyla imzalı olanı kabul eder. 3.8.1'den Mac sürümleri bu yolla, Developer ID'li ve Apple onaylı
    yayımlanır; 3.7 ve öncesi için aynı derlemenin Ajandam sertifikasıyla imzalı kopyası ayrı pakette durur.
  - Windows: uygulama kurulum dosyasının SHA-256 özetini ve `latest-windows.json`'daki imzasını uygulamaya gömülü
    anahtarla doğrular. Güncelleme bilgisinin ikinci imzası sürüm numarasını, özeti ve dosya adını kapsar: eski bir
    sürüm yeniymiş gibi sunulamaz. İndirilen kurulum dosyası doğrulandıktan sonra kurulana kadar değiştirilemez.
    Bilgisayardaki herkes için kurulu Ajandam kendini sessizce güncellemez: hazır güncelleme **Şimdi kur** ile
    Windows'un yönetici izniyle başlatılır; imzalı bilgi, özet ve dosyanın değiştirilemez tutulması başlatmadan önce
    aynen denetlenir. İzin verilmezse güncelleme hazır bekler.
  - Microsoft Store'dan kurulan Ajandam: paketi Microsoft imzalar ve Microsoft Store günceller; Ajandam'ın kendi
    güncelleyicisi bu baskıda derlenmez.
  - Tutmayan güncelleme kurulmaz. Mac'te kurulan sürüm açılamazsa önceki sürüme dönülür. Her sürümün dosyalarının
    özetleri `SHA256SUMS` dosyasında yayımlanır.
  - Windows kurulum dosyası bir sertifika kuruluşunca (Authenticode) imzalanmaz: SmartScreen ilk çalıştırmada uyarır.
    Güncelleyicinin denetimi Ajandam'ın kendi anahtarıyladır; uyarısız kurulum için Microsoft Store'u öneririz.
- **Vekil sunucu (Windows, 3.9):** Ajandam'ın internet istekleri Windows'un ara sunucu (proxy) ayarını izler: otomatik
  yapılandırma betiği (PAC) ve otomatik algılama (WPAD) Windows'un kendisine sorulur. Ara sunucu için girdiğin kullanıcı
  adı ve parola (Basic) yalnızca o bilgisayarda, Windows'un veri koruma özelliğiyle (DPAPI) yalnızca senin Windows
  kullanıcının açabileceği biçimde şifrelenmiş bir dosyada durur; yedeklere girmez, Ajandam'ın ekranına geri dönmez ve
  **yalnızca adını girdiğin ara sunucuya** gönderilir: başka bir ağ otomatik algılamayla Ajandam'ı kendi ara sunucusuna
  yönlendirse de kimliğin oraya gitmez. Basic kimlik ara sunucuya şifresiz (base64) gider; https adreslerinin içeriği yine
  şifreli kalır. **Tüm verileri sil** kimliği de siler. Ağ tanılama adreslerin yalnızca alan adını gösterir.
- **Türkiye veri kanalı (3.6):** TÜFE, kart faiz oranları, bayramlar ve kısa duyurular bu depodaki
  `veri/turkiye.json` dosyasından gelir. Dosya GitHub Actions'ta güncellemelerle aynı anahtarla imzalanır
  (`veri/turkiye.json.imza`); uygulama imzayı gömülü sertifikayla ya da anahtarla doğrular, yalnızca kendindekinden
  yeni sürümü kabul eder. Sayfa her değeri ayrıca denetler ve yalnızca kendi tablolarından yeni olanı kullanır;
  duyurular düz metin olarak gösterilir, dosyadan hiçbir şey kod olarak çalıştırılmaz. İmzası tutmayan dosya kullanılmaz,
  uygulama kendi verisiyle devam eder.
- **Yapay zeka:**
  - Apple Intelligence ve yerel modeller (Ollama, LM Studio) bilgisayarının dışına veri göndermez. **Otomatik** seçimde
    önce bunlar kullanılır.
  - ChatGPT ile giriş yaptıysan Asistan, sorunu cevaplamak için hesap ve kategori adlarını ve soruyla ilgili kayıtlarını
    (tarih, tutar, açıklama, toplamlar), okuttuğun dökümlerin metnini OpenAI'ye gönderir. Göndermeden önce izin ister
    (giriş yapmak izin sayılmaz; izin Ajandam kapanana kadar geçerlidir); dökümler için ayrıca sorar, notlar yalnızca
    **Notlarımı da gönder** açıksa gider. IBAN, TC kimlik no, kart numarası, telefon ve e-posta gönderilmeden gizlenir
    (IBAN ve kart numarasının son dört hanesi kalır); kişi adları gizlenmez.
  - ChatGPT oturumu yalnızca o bilgisayarda durur: Mac'te giriş jetonları macOS Anahtar Zinciri'nde, e-posta adresin
    yalnızca senin kullanıcı hesabının okuyabildiği bir dosyada (0600); Windows'ta jetonlar Windows'un veri koruma
    özelliğiyle (DPAPI) yalnızca senin Windows kullanıcının açabileceği biçimde şifrelenir. ChatGPT'den çıkış yapınca
    oturum OpenAI tarafında da kapatılır.
  - Kayıtlarındaki yazılar (ör. bir havale açıklaması, bir not) yapay zekaya veri olarak gider, talimat olarak değil.
    Asistan ekleme ya da değişikliği yalnızca sen istediğinde önerir; düzenleme ve silme tek tek onaylanır.
  - Claude ve diğer MCP uygulamaları yalnızca **Ayarlar › Yapay zeka › Yapay zeka uygulamaları bağlanabilir** açıksa
    bağlanabilir; Mac'te bu izin ve başka bir uygulamanın ayar dosyasına yazmak Mac'in kendi onay penceresiyle
    istenir. Bağlantı Mac'te yalnızca senin kullanıcı hesabının erişebildiği bir Unix soketi (0600), Windows'ta
    yalnızca senin Windows hesabına (ve SYSTEM'e) açık, uzak bağlantıları reddeden ve gizli bir anahtar isteyen bir
    adlandırılmış kanal (named pipe) üzerinden olur.
  - Adresle bağlanan uygulamalar için `http://127.0.0.1:<kapı>/mcp/<anahtar>` adresi ayrı bir ayarla
    (**Bağlantı adresi**) açılır; varsayılanı kapalıdır. Adres yalnızca bu bilgisayardan ve gizli anahtarı bilen
    tarafından kullanılabilir (anahtar adreste ya da `Authorization: Bearer` başlığında); web sitelerinden (tarayıcıdan)
    ve başka bir ana bilgisayar adıyla gelen istekler reddedilir. Kapı başka bir programdaysa Ajandam adresi kendiliğinden
    başka kapıya taşımaz. Anahtar yalnızca senin kullanıcı hesabının okuyabildiği bir dosyada durur, günlüklere yazılmaz
    ve **Anahtarı yenile** ile değiştirilebilir. Panoya kopyalanan adres ve IBAN, pano geçmişine ve bulut panosuna
    girmez (Mac'te 3.7'den).
  - Başka uygulamaların ayar dosyaları (ör. Claude Code'un `~/.claude.json`'ı) yerinde düzenlenir: dosya izinleri,
    yorumlar ve diğer ayarlar korunur; eski hali yalnızca senin okuyabileceğin izinlerle yanında saklanır.
  - Yapay zekanın önerdiği eklemeler ve değişiklikler senin onayını bekler. **Onaysız kaydet** uygulama başına açılır;
    kayıt düzenleme, silme, kategori ve bütçe değişiklikleri ve ekstre içe aktarmaları her zaman onay ister. Adresle
    bağlanan ya da Ajandam'ın tanıyamadığı bir program onaysız kaydedemez. Gelen öneriler içerikleriyle (aracın girdisi,
    özet) **Ayarlar › Yapay zeka › Öneriler**'de saklanır: bekleyenler karar verilene kadar, sonuçlananlar 14 gün (en çok
    60); günlük ve bulut yedeklerine de girerler. Okuma araçlarına verilenler saklanmaz; bağlanan uygulamalar için
    yalnızca adı, sürümü ve çağırdığı araçların adı ve zamanı tutulur.
  - **Yerel bağlantının sınırı:** Soket, kanal ve anahtar Ajandam'ı başka kullanıcı hesaplarından, başka
    bilgisayarlardan ve web sitelerinden korur; senin hesabında çalışan programlardan korumaz. Bağlantı izni açıkken ve
    Ajandam kilitli değilken senin hesabında çalışan her program Ajandam'a bağlanabilir (Mac'te soketi senin hesabındaki
    her süreç açabilir; Windows'ta kanal senin hesabına ve SYSTEM'e açıktır, anahtarı senin okuyabildiğin bir
    dosyadadır): kayıtlarını okuyabilir ve öneri gönderebilir. Ajandam bağlanan uygulamayı süreçlerin adından tanır
    (Mac'te `--mcp`'yi başlatan uygulamanın paket ya da dosya adı, Windows'ta `--mcp` sürecinin bildirdiği üst süreç
    adları): adı değiştirilmiş bir program (Windows'ta bu adları kendisi uyduran bir program da) tanıdık bir uygulama
    gibi görünebilir. **Onaysız kaydet** bu tanımaya dayanır: onu açtığın uygulamanın adını taşıyan bir program
    sorulmadan ekleme yapabilir (düzenleme ve silme yine onay ister). Öneri: bağlantı iznini kullanmadığın zaman kapat,
    onaysız kaydetmeyi gerekmedikçe açma, güvenmediğin programları kendi hesabında çalıştırma. Senin hesabında çalışan
    zararlı bir program kayıt dosyalarını zaten doğrudan da okuyabilir; bu sınır Ajandam'a özgü değildir.
- **Canlı fiyatlar ve kurlar:** Yalnızca herkese açık fiyat ve kur verisi indirilir (geçmiş tarihli kur için TCMB
  arşivinden o günün kur dosyası); istekte kayıtlarına ait bir bilgi yoktur.
- **Geri bildirim:** Yalnızca sen gönderdiğinde, formda yazdıkların (ve eklediğin ekran görüntüsü) Google Apps Script
  üzerinden Ajandam'ın destek adresine e-postayla gider; kayıtların eklenmez.
