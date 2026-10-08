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
- **Yedekler:** Günlük yedekler aynı klasörde durur. iCloud Drive (Windows'ta OneDrive) yedeğini açarsan yedekler kendi
  bulut hesabına da kopyalanır. Yedeklerde kayıtların ve fiş/fatura eklerin vardır; PIN ve kilit ayarları yedeğe girmez,
  bir yedeğe dönmek şimdiki PIN'i değiştirmez ya da kaldırmaz. **Tüm verileri sil** (önce sorar) bu bilgisayarın
  yedeklerini, bulut yedeklerini ve eklerini de siler.
- **Kilit:** PIN kilidi, Touch ID ve Windows Hello Ajandam'ın arayüzünü korur; diskteki dosyaları şifrelemez. Mac'inin
  diskini FileVault, Windows'ta BitLocker (ya da Cihaz şifrelemesi) ile şifrelemeni öneririz. PIN açıksa bilgisayar
  uyuyunca, ekran kilitlenince ya da kullanıcı değişince Ajandam da kilitlenir ve bildirimlerde ödeme adları ve
  tutarlar görünmez (Ayarlar › Bildirimler'den açabilirsin). Ajandam kilitliyken yapay zeka uygulamalarının
  isteklerine cevap verilmez. **Tutarları gizle** yalnızca ekrandaki tutarları gizler; kayıtları şifrelemez.
- **Şifreli notlar:** İstediğin not, not parolanın PBKDF2-SHA256 türeviyle (600 000 tur) AES-256-GCM ile şifrelenir;
  parola hiçbir yerde saklanmaz ve unutulursa not açılamaz. Şifreli notun metni aramaya, yapay zeka uygulamalarına ve
  yedeklere açık hâliyle girmez; ondan kopyalanan metin pano geçmişine ve bulut panosuna (Mac'te Evrensel Pano'ya)
  girmez. 3.7'den istersen Touch ID ya da Windows Hello ile açılır: bunun için parola değil, parolanın türevi olan
  anahtar yalnızca o bilgisayarda saklanır (Mac'te eşitlenmeyen bir Anahtar Zinciri kaydında, Windows'ta veri koruma
  özelliğiyle (DPAPI) şifrelenmiş bir dosyada) ve ancak parmak izi ya da yüz doğrulamasından sonra okunur. Anahtar
  yedeklere ve buluta girmez; parola değişince, seçenek kapatılınca ya da **Tüm verileri sil** ile silinir. Bu bir
  kolaylıktır: o bilgisayarda kullanıcı hesabına giriş yapmış biri çabayla anahtarı okuyabilir.
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
    **Notlarımı da gönder** açıksa gider. IBAN, TC kimlik no, kart numarası, telefon ve e-posta gönderilmeden gizlenir.
  - ChatGPT oturumu yalnızca o bilgisayarda durur: Mac'te giriş jetonları macOS Anahtar Zinciri'nde, e-posta adresin
    yalnızca senin kullanıcı hesabının okuyabildiği bir dosyada (0600); Windows'ta jetonlar Windows'un veri koruma
    özelliğiyle (DPAPI) yalnızca senin Windows kullanıcının açabileceği biçimde şifrelenir. ChatGPT'den çıkış yapınca
    oturum OpenAI tarafında da kapatılır.
  - Kayıtlarındaki yazılar (ör. bir havale açıklaması, bir not) yapay zekaya veri olarak gider, talimat olarak değil.
    Asistan ekleme ya da değişikliği yalnızca sen istediğinde önerir; düzenleme ve silme tek tek onaylanır.
  - Claude ve diğer MCP uygulamaları yalnızca **Ayarlar › Yapay zeka › Yapay zeka uygulamaları bağlanabilir** açıksa
    bağlanabilir; Mac'te bu izin ve başka bir uygulamanın ayar dosyasına yazmak Mac'in kendi onay penceresiyle
    istenir. Bağlantı Mac'te yalnızca senin kullanıcı hesabının erişebildiği bir Unix soketi (0600), Windows'ta
    yalnızca senin Windows hesabına açık, uzak bağlantıları reddeden ve gizli bir anahtar isteyen bir adlandırılmış
    kanal (named pipe) üzerinden olur.
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
    bağlanan ya da Ajandam'ın tanıyamadığı bir program onaysız kaydedemez.
- **Canlı fiyatlar ve kurlar:** Yalnızca herkese açık fiyat ve kur verisi indirilir (geçmiş tarihli kur için TCMB
  arşivinden o günün kur dosyası); istekte kayıtlarına ait bir bilgi yoktur.
- **Geri bildirim:** Yalnızca sen gönderdiğinde, formda yazdıkların (ve eklediğin ekran görüntüsü) Google Apps Script
  üzerinden Ajandam'ın destek adresine e-postayla gider; kayıtların eklenmez.
