# Yapay zeka

Ajandam'ın yapay zekası API anahtarı istemez; bilgisayarındaki modellerle ya da zaten kullandığın uygulamalarla çalışır.
Hangisinin kullanılacağını **Ayarlar › Yapay zeka** bölümünden seçersin. **Otomatik** seçiliyken önce bilgisayarında
açık bir yerel model (Ollama, LM Studio), o yoksa Apple Intelligence (Mac), o da yoksa (giriş yaptıysan) ChatGPT
kullanılır.

## Neler yapar

- **Ajandam Asistanı** (üst çubuktaki **✦ Asistan** düğmesi, ⇧⌘A, + menüsü, menü çubuğu ya da ⌘K): "Bu ay markete ne harcadım, geçen aya göre?", "Net varlığım
  yılbaşından beri reel olarak arttı mı?", "Kartımı sadece asgari ödersem ne zaman biter?" gibi soruları kayıtlarına
  bakarak cevaplar. Gerekirse kayıtlarını birkaç adımda sorgular, hesap yapar; sen istersen ekleme ya da değişiklik
  önerir. Var olan bir ajanda kaydını ya da ödemeyi değiştirmeyi ya da silmeyi yalnızca açıkça istediğinde önerir (ör.
  "Toplantıyı cumaya al", "Kira tutarını güncelle", "Su faturasını sil"); bir şey eklemek istemen yetmez. **Durdur**
  isteği hemen keser. Kayıtlarındaki yazılar (ör. bir havale açıklaması, bir not) modele veri olarak gider: asistana
  talimat veremez. Yapay zeka yoksa basit soruları ve hızlı eklemeleri yine kayıtlarından cevaplar.
  **Ayarlar › Yapay zeka › Asistan'a notlarım**'a (en çok 500 harf) nasıl cevap vermesini istediğini ya da bilmesi
  gerekenleri yazabilirsin (ör. "Kısa ve maddeli cevap ver", "Maaşım ayın 15'inde yatar"): Asistan her soruda bunlara
  tercih olarak uyar; kuralları değiştirmez, kayıt eklemeden önce yine onayını alır. Bulutta çalışan bir yapay zeka
  (ChatGPT) seçiliyse notlar her istekte ona gider (kişisel bilgiler gizlenir); bilgisayarında çalışan modellerde
  bilgisayarından çıkmaz. Notlar yedeklere girer; sohbetler saklanmaz.
- **Ekstre ve hesap dökümü okuma:** kurallarla okunamayan dökümleri, taranmış (resim) PDF'leri ve fotoğrafları okur.
  Okuduğu satırların toplamı ekstredeki dönem borcuyla ya da hesap bakiyesiyle karşılaştırılır (mutabakat);
  tutmazsa uyarır. Kategorisi belirsiz satırlar için öneri getirir; öneriler ✦ işaretiyle gösterilir.
- **Öğrenen kategoriler** yapay zekasız da çalışır: bir iş yerinin kategorisini bir kez düzeltirsen sonrakiler o
  kategoriye düşer (**Ayarlar › Kategoriler › Öğrenilen kategoriler**).

Yapay zekanın eklemek ya da değiştirmek istedikleri **Öneriler** kutusuna düşer (bekleyen öneri varken üst çubukta
✦ simgesi belirir; **Ayarlar › Yapay zeka › Öneriler** de açar); sen onaylamadan hiçbir şey kaydedilmez. İstersen
**Onaysız kaydet** ile bir uygulamanın eklemelerinin (yeni işlem, ödeme, ajanda kaydı, not) hemen kaydedilmesini
seçebilirsin (uygulama başına); kayıt, ajanda kaydı ve ödeme düzenleme ve silme, ödendi ya da yapıldı işaretleme, nota
ekleme, kategori ve bütçe değişiklikleri, hedefe katkı, borç ödemesi, yeni borç ya da alacak, düzenli kayıt ve ekstre içe
aktarmaları her zaman onay ister; düzenleme ve silme önerileri tek tek onaylanır. Öneriler
içerikleriyle bu bilgisayarda saklanır: bekleyenler sen karar verene kadar, sonuçlananlar 14 gün (en çok 60 tane);
Ajandam'ın günlük ve bulut yedeklerine de girerler.

## Apple Intelligence

- macOS 26 ve Apple çipli bir Mac'te, Apple Intelligence açıksa kendiliğinden kullanılır.
- Model Mac'inde çalışır; kayıtların hiçbir yere gönderilmez.
- Küçük bir modeldir: kısa sorular ve kategori önerileri için iyidir; uzun dökümleri parça parça okur.

## ChatGPT (hesabınla giriş)

1. **Ayarlar › Yapay zeka › ChatGPT ile devam et**'e bas; tarayıcıda ChatGPT hesabınla giriş yapıp Ajandam'a izin ver.
2. Kullanım ChatGPT planından düşer; API anahtarı gerekmez. İstersen modeli de seçebilirsin.
3. Asistan, sorunu cevaplamak için hesap ve kategori adlarını ve soruyla ilgili kayıtlarını (tarih, tutar, açıklama,
   toplamlar), Asistan'a notlarını (yazdıysan) ve okuttuğun dökümlerin metnini OpenAI'ye gönderir. IBAN, TC kimlik no, kart numarası, telefon ve e-posta
   gönderilmeden gizlenir (IBAN ve kart numarasının son dört hanesi kalır); kişi adları gizlenmez. Giriş yapmak izin
   sayılmaz: **Kayıtlarımı sormadan ChatGPT'ye gönder** kapalıyken Asistan ilk soruda izin ister (izin Ajandam kapanana
   kadar geçerli), döküm okuma **Dökümleri sormadan gönder** kapalıyken her dosyada sorar. Notlar yalnızca **Notlarımı
   da gönder** açıksa gider. ChatGPT konuşmalarına ya da hesabının başka bilgilerine erişilmez.

Oturum bilgileri yalnızca bu bilgisayarda saklanır: Mac'te giriş jetonları macOS Anahtar Zinciri'nde, Windows'ta
yalnızca senin Windows kullanıcının açabileceği biçimde şifreli; e-posta adresin yalnızca senin okuyabildiğin bir dosyada. **Çıkış yap** ile ikisi de silinir.

## Yerel model (Ollama, LM Studio)

[Ollama](https://ollama.com) ya da [LM Studio](https://lmstudio.ai) açıksa Ajandam modelleri kendiliğinden bulur;
hangisinin kullanılacağını ayarlardan seçersin. Her şey bilgisayarında kalır. Türkçeyi iyi bilen, talimat izleyen ve en az
7–8 milyar parametreli bir model öneririz; küçük modeller ekstre okumada satır atlayabilir (mutabakat bunu yakalar).

## Hangi uygulamayla çalışacaksın?

**Ayarlar › Yapay zeka**'nın ikinci bölümünde Claude, ChatGPT, Google Antigravity, LM Studio, Cursor, VS Code,
Claude Code, OpenCode, Cline ve Kimi Code alt alta durur: bilgisayarında bulunup bulunmadığı, Ajandam'ın eklenip
eklenmediği ve uygulamanın bağlanıp bağlanmadığı (son bağlantı ve son kullandığı araçla) görünür.

1. Uygulamanın satırını aç ve **…'e Ajandam'ı bağla**'ya bas (bağlantı izni de açılır). Ajandam kendini uygulamanın
   ayarına ekler (Claude'a uzantı olarak), ayar dosyasını yeniden okuyup doğrular ve sunucusunu uygulamanın
   başlatacağı gibi dener.
2. Satırda uygulamada ne yapacağın yazar (ör. ChatGPT'yi kapatıp yeniden aç, Antigravity'de MCP sunucularını yenile).
3. Uygulamaya "Ajandam'a göre bu ay nereye harcadım?" gibi sorular sor.

**Bağlantıyı test et** Ajandam'ın sunucusunun cevap verdiğini, uygulamanın ayarında Ajandam'ın olduğunu ve uygulamanın
bağlanıp bağlanmadığını gösterir. **Kaldır** Ajandam'ı uygulamanın ayarından çıkarır. Uygulamanın diğer ayarlarına ve
başka sunuculara dokunulmaz; ayar dosyasının eski hali `….ajandam-yedek` olarak saklanır, geçersiz bir dosya
değiştirilmez. Bağlantıyı **Yapay zeka uygulamaları bağlanabilir** anahtarıyla istediğin an kapatabilirsin.

## Uygulama izinleri

**Ayarlar › Yapay zeka › Uygulama izinleri**'nde her uygulamanın neye bakabileceğini ayrı ayrı seçersin: **Para**
(hesaplar, işlemler, ödemeler, bütçe, hedefler, düzenli kayıtlar, yatırımlar), **Ajanda**, **Notlar**, **Borçlar** (kişilerle borç ve
alacaklar) ve **Kişisel bilgileri gizle**. Kapalı bir bölümü soran uygulamaya Ajandam "izin vermedi" der; o bölüme öneri de
gönderemez.

- Yeni bağlanan uygulamalarda notlar kapalı başlar. Önceki bir sürümden beri bağlı olan uygulamalar notlara bakmaya devam
  eder; Ajandam bunu bir kez söyler.
- Ajandam'ın hangi uygulama olduğunu doğrulayamadığı programlar (betik, terminal) ve bağlantı adresiyle bağlananlar ortak
  bir izin kullanır (**Tanınmayan uygulamalar ve bağlantı adresi**); onlarda da notlar kapalı başlar.
- **Borçlar** kapalıyken kişilerle borç ve alacaklar ödemelerde, özette ve nakit akışında da görünmez. Kişi adları işlem
  açıklamalarında (ör. "Ayşe'ye EFT") ve notlarda da geçer: para kayıtları ya da notlar açıksa uygulama onları görür.
- **Kişisel bilgileri gizle** açıkken uygulamaya giden bilgide IBAN, kart numarası, TC kimlik no, telefon ve e-posta
  gizlenir (IBAN ve kart numarasının son dört hanesi kalır); kişi adları gizlenmez.
- Ajandam'ın eski bir sürümüne dönersen bu izinler uygulanmaz: bütün uygulamalar her şeye yeniden bakabilir.

## Erişim günlüğü

**Ayarlar › Yapay zeka › Erişim günlüğü › Göster**, yapay zeka uygulamalarının Ajandam'a ne zaman ne sorduğunu gösterir:
zaman, uygulama, araç, isteğin alan adları ve tarih aralığı, kaç kayıt döndüğü ve sonuç (okundu, öneri gönderildi, izin
yok…). Kayıtlarının ve sorulanların içeriği tutulmaz. Günlük yalnızca bu bilgisayarda kalır: en çok 30 gün ya da 1.000
istek; yedeklere girmez, **Günlüğü temizle** ya da **Tüm verileri sil** siler.

## Claude (masaüstü uygulaması)

**Claude'a Ajandam'ı bağla** Ajandam uzantısını Claude masaüstü uygulamasında açar; **Yükle**'ye (Install) bas,
Claude'u yeniden açman gerekmez. Mac'te sürümler sayfasındaki `Ajandam-Claude.mcpb` dosyasını açmak da aynı işi
görür. Claude uzantıyı açamıyorsa Ajandam Claude'un ayar dosyasına eklenir; Claude'dan tamamen çıkıp (Windows'ta
bildirim alanındaki simgeden) yeniden açınca bağlanır. Uzantının yeni sürümü varsa satır "yeniden kur" der; uzantıyı
kaldırmak için **Claude › Ayarlar › Uzantılar**.

Claude'un "özel bağlayıcı" (custom connector) özelliği Anthropic'in sunucularından bağlandığı için bilgisayarındaki
Ajandam'a ulaşamaz; Claude'u listeden bağla.

## ChatGPT (masaüstü uygulaması)

ChatGPT'nin masaüstü uygulaması da Ajandam'a [MCP](https://modelcontextprotocol.io) ile bağlanır: Work ve Codex
modlarında kayıtlarına bakabilir, analiz yapabilir ve ekleme önerebilir; normal sohbet (Chat) bilgisayardaki
uygulamalara bağlanamaz. Öneriler Ajandam'da senin onayını bekler.

1. **ChatGPT'ye Ajandam'ı bağla**'ya bas. Ajandam, ChatGPT'nin ayar dosyasına (`~/.codex/config.toml`; Windows'ta
   `%USERPROFILE%\.codex\config.toml`; ChatGPT ve Codex ortak kullanır) şu satırları yazar:
   ```toml
   # Ajandam: kayıtlarına bakar; önerileri Ajandam'da sen onaylarsın
   [mcp_servers.ajandam]
   command = "/Applications/Ajandam.app/Contents/MacOS/Ajandam"
   args = ["--mcp"]
   ```
   Windows'ta komut `C:\Users\<kullanıcı>\AppData\Local\Ajandam\Ajandam.exe` olur.
2. ChatGPT'den çık (Mac'te ⌘Q, Windows'ta bildirim alanındaki simgeden) ve yeniden aç.
3. ChatGPT'ye "Ajandam'a göre bu ay nereye harcadım?" gibi sorular sorabilirsin.

Bu yol ChatGPT planına göre görünmeyebilir. Yukarıdaki "ChatGPT hesabınla giriş" bundan ayrıdır: o yol Ajandam'ın
kendi Asistanı ve döküm okuması içindir.

## Listede olmayan uygulamalar

MCP destekleyen başka bir uygulamanın ayarlarına **Ayarlar › Yapay zeka › Listede olmayan uygulamalar › Kopyala**
ile aldığın yapılandırmayı ekle:

```json
{
  "mcpServers": {
    "ajandam": {
      "command": "/Applications/Ajandam.app/Contents/MacOS/Ajandam",
      "args": ["--mcp"]
    }
  }
}
```

Windows'ta komut `C:\\Users\\<kullanıcı>\\AppData\\Local\\Ajandam\\Ajandam.exe` olur (JSON'da ters eğik çizgiler çift).

`Ajandam --mcp`, standart giriş/çıkış üzerinden konuşan bir MCP sunucusudur. İstekleri çalışan Ajandam'a yalnızca
senin kullanıcı hesabının erişebildiği yerel bir kanalla (Mac'te soket, Windows'ta adlandırılmış kanal) iletir;
Ajandam açık değilse arka planda açar. Bağlantı izni kapalıyken ya da Ajandam kilitliyken istekler cevaplanmaz.
Senin hesabında çalışan başka programlar da bu kanala bağlanabilir ve tanıdık bir uygulamanın adını taşıyabilir;
bağlantının neye karşı koruduğu [SECURITY.md](../SECURITY.md)'de.

**Bağlantı adresi:** sunucu eklerken adres isteyen uygulamalar (Akış Destekli HTTP) için Ajandam bu bilgisayarda bir
MCP adresi açabilir (`http://127.0.0.1:47821/mcp/…`). Varsayılanı kapalıdır; **Ayarlar › Yapay zeka › Bağlantı
adresi** anahtarıyla açar, **Kopyala** ile alırsın. Ajandam'ı kendisi başlatan uygulamalar (Claude, ChatGPT, LM
Studio…) için gerekmez. Adres yalnızca bu bilgisayardan ve gizli anahtarla çalışır, tarayıcıdan gelen istekler
reddedilir; paylaşma. Anahtarı adreste değil başlıkta göndermek için adres `…/mcp`, başlık
`Authorization: Bearer <anahtar>` olur. Adres paylaşıldıysa **Anahtarı yenile** eski adresi geçersiz kılar. Kapı
başka bir programdaysa Ajandam adresi kendiliğinden değiştirmez; **Başka kapı** ile sen seçersin (adresle bağlanan
uygulamalara yeni adresi vermen gerekir). Adresle bağlanan uygulamalar onaysız kaydedemez.

## Araçlar

| Okuma | Öneri (onayla kaydedilir) |
|---|---|
| `ozet` · aylık özet, bakiye, yaklaşan ödemeler | `islem_ekle` · gelir, gider, transfer |
| `hesaplar` · hesaplar ve bakiyeler | `islemleri_ice_aktar` · ekstre satırlarını içe aktarma ekranına gönderir |
| `islemleri_ara` · kayıtları süzer, toplar | `odeme_ekle` · son ödeme tarihli ödeme |
| `harcama_dagilimi` · kategori, üst kategori, ay, iş yeri, hesap kırılımı | `odeme_odendi` · bekleyen ödemeyi ödendi işaretler |
| `odemeler` · faturalar, ekstreler, borçlar | `etkinlik_ekle` · etkinlik ya da yapılacak |
| `butce` · limitler, limit geçmişi, aşımlar ve aylık tavan | `etkinlik_tamamla` · yapılacağı tamamlar |
| `nakit_akisi` · önümüzdeki 30 gün – 12 ayda ne kalacak (uzun ufukta ay ay) | `not_ekle` · Markdown not |
| `abonelikler` · düzenli çekimler | `not_duzenle` · var olan notun sonuna ekler |
| `duzenli` · düzenli gelir, gider ve transferler | `islem_duzenle` · kaydı değiştirir (her zaman onayla) |
| `hedefler` · birikim hedefleri, bağlı hesap ve otomatik katkı | `islem_sil` · kaydı siler (her zaman onayla, geri alınabilir) |
| `borclar` · kişilerle borç ve alacaklar | `kategori_degistir` · kayıtların kategorisi (her zaman onayla) |
| `ajanda` · etkinlikler ve yapılacaklar | `butce_limiti` · aylık kategori limiti, bu aydan başlayarak (her zaman onayla) |
| `notlari_ara`, `not_oku` · notlar | `hedef_katki` · birikim hedefine katkı ya da hedeften çekme |
| `kategoriler` · kategori listesi (alt kategorinin üstüyle) | `borc_odeme` · kişiyle borca ödeme ya da alacağa tahsilat |
| `net_varlik` · ay ay net varlık (TL, dolar ya da euro), reel değer, dağılım, değişimin kaynakları | `duzenli_ekle` · düzenli gelir, gider ya da transfer |
| `yatirimlar` · ortalama maliyet, kâr/zarar (enflasyondan arındırılmışı da), BES devlet katkısı ve hak ediş | `etkinlik_duzenle` · etkinliği ya da yapılacağı değiştirir (her zaman onayla) |
| `enflasyon` · TÜFE, reel gelir-gider, kira artışı sınırı | `etkinlik_sil` · etkinliği ya da yapılacağı siler (her zaman onayla, geri alınabilir) |
| `kart_hesapla` · asgari ödeme, faiz (KKDF, BSMV dahil), kapanma süresi | `odeme_duzenle` · bekleyen ödemeyi değiştirir (her zaman onayla) |
| `oneri_durumu` · gönderilen önerinin onaylanıp onaylanmadığı | `odeme_sil` · bekleyen ödemeyi siler (her zaman onayla, geri alınabilir) |
| | `borc_ekle` · kişiyle yeni borç ya da alacak |

`yatirimlar` yalnızca okur: alım-satımları ve fon fiyatlarını Ajandam'da sen girersin. Fon ve hisse (TEFAS, BIST) fiyatı
girdiğin son fiyattır (tarihiyle); kripto, döviz ve altın canlı fiyatla. Kâr/zarar ortalama maliyetle hesaplanır, vergi
hesabı değildir. BES'te doğum tarihin uygulamaya gitmez.

Tekrarlanan ajanda kaydında ve ödemede düzenleme ve silme yalnızca o tekrara ya da döneme (`kapsam: bu`, varsayılan) ya da
bütün tekrarlara (`kapsam: tum`; ödemede bu ve sonraki dönemlere) uygulanır; öneri hangisi olduğunu söyler. Ödenmiş dönemler
değişmez; ödemenin bitişi (bir tarihte ya da belirli sayıda) korunur. Öneride uzun açıklamanın değişen kısmı gösterilir,
değişen bağlantı ve IBAN tamamıyla yazılır. Yapay zeka ajanda kaydının açıklamasının ilk 300 harfini görür: daha uzun
açıklamayı değiştirmez; açıklamadaki toplantı notu ve işlem bağlantıları korunur. Yeni borç ya da alacak ve borç ödemesi
yalnızca borç kaydına yazılır, hesap bakiyelerini değiştirmez. Hedefe
katkı, hedef bir hesaba bağlı değilse yalnızca hedefe yazılır; bağlıysa Ajandam'daki katkı penceresi gibi seçilen hesaptan (`kaynak_hesap`; verilmezse son
katkının hesabı) hedefin hesabına transfer olarak da yazılır. Uzun listeler sayfa sayfa gelir (`imlec`). Aynı istek iki
kez gelirse (ör. bağlantı koptuğu için yeniden gönderilirse) ikinci bir öneri oluşmaz. IBAN ve kart numaralarının
yalnızca son 4 hanesi paylaşılır. Ajandam MCP'nin 2026-07-28 sürümünü ve eski sürümlerini (2024-11-05'ten 2025-11-25'e)
destekler.
