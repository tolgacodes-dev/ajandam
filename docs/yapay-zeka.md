# Yapay zeka

Ajandam'ın yapay zekası API anahtarı istemez; bilgisayarındaki modellerle ya da zaten kullandığın uygulamalarla çalışır.
Hangisinin kullanılacağını **Ayarlar › Yapay zeka** bölümünden seçersin. **Otomatik** seçiliyken ChatGPT'ye giriş
yaptıysan ve özet göndermeye izin verdiysen ChatGPT, yoksa açık bir yerel model (Ollama, LM Studio), o da yoksa Apple
Intelligence kullanılır (Mac).

## Neler yapar

- **Ajandam Asistanı** (üst çubuktaki **✦ Asistan** düğmesi, ⇧⌘A, + menüsü, menü çubuğu ya da ⌘K): "Bu ay markete ne harcadım, geçen aya göre?", "Net varlığım
  yılbaşından beri reel olarak arttı mı?", "Kartımı sadece asgari ödersem ne zaman biter?" gibi soruları kayıtlarına
  bakarak cevaplar. Gerekirse kayıtlarını birkaç adımda sorgular, hesap yapar; ekleme ya da değişiklik önerebilir.
  Yapay zeka yoksa basit soruları ve hızlı eklemeleri yine kayıtlarından cevaplar.
- **Ekstre ve hesap dökümü okuma:** kurallarla okunamayan dökümleri, taranmış (resim) PDF'leri ve fotoğrafları okur.
  Okuduğu satırların toplamı ekstredeki dönem borcuyla ya da hesap bakiyesiyle karşılaştırılır (mutabakat);
  tutmazsa uyarır. Kategorisi belirsiz satırlar için öneri getirir; öneriler ✦ işaretiyle gösterilir.
- **Öğrenen kategoriler** yapay zekasız da çalışır: bir iş yerinin kategorisini bir kez düzeltirsen sonrakiler o
  kategoriye düşer (**Ayarlar › Kategoriler › Öğrenilen kategoriler**).

Yapay zekanın eklemek ya da değiştirmek istedikleri **Öneriler** kutusuna düşer (bekleyen öneri varken üst çubukta
✦ simgesi belirir; **Ayarlar › Yapay zeka › Öneriler** de açar); sen onaylamadan hiçbir şey kaydedilmez. İstersen
**Onaysız kaydet** ile hemen kaydedilmesini seçebilirsin; ekstre içe aktarmaları her zaman onay ister.

## Apple Intelligence

- macOS 26 ve Apple çipli bir Mac'te, Apple Intelligence açıksa kendiliğinden kullanılır.
- Model Mac'inde çalışır; kayıtların hiçbir yere gönderilmez.
- Küçük bir modeldir: kısa sorular ve kategori önerileri için iyidir; uzun dökümleri parça parça okur.

## ChatGPT (hesabınla giriş)

1. **Ayarlar › Yapay zeka › ChatGPT ile devam et**'e bas; tarayıcıda ChatGPT hesabınla giriş yapıp Ajandam'a izin ver.
2. Kullanım ChatGPT planından düşer; API anahtarı gerekmez. İstersen modeli de seçebilirsin.
3. Asistan, sorunu cevaplamak için gereken özetleri (ör. ilgili ayın kategori toplamları, aradığın kayıtlar) ve
   okuttuğun dökümlerin metnini OpenAI'ye gönderir. **Kayıt özetlerini ChatGPT'ye gönder** kapalıyken her seferinde
   izin ister. ChatGPT konuşmalarına ya da hesabının başka bilgilerine erişilmez.

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

**Bağlantı adresi:** sunucu eklerken adres isteyen uygulamalar için Ajandam bu bilgisayarda bir MCP adresi açar
(`http://127.0.0.1:47821/mcp/…`; **Ayarlar › Yapay zeka › Bağlantı adresi › Kopyala**). Adres yalnızca bu
bilgisayardan ve gizli anahtarla çalışır, tarayıcıdan gelen istekler reddedilir; paylaşma.

## Araçlar

| Okuma | Öneri (onayla kaydedilir) |
|---|---|
| `ozet` · aylık özet, bakiye, yaklaşan ödemeler | `islem_ekle` · gelir, gider, transfer |
| `hesaplar` · hesaplar ve bakiyeler | `islemleri_ice_aktar` · ekstre satırlarını içe aktarma ekranına gönderir |
| `islemleri_ara` · kayıtları süzer, toplar | `kategori_degistir` · kayıtların kategorisi |
| `harcama_dagilimi` · kategori, ay, iş yeri, hesap kırılımı | `odeme_ekle` · son ödeme tarihli ödeme |
| `odemeler` · faturalar, ekstreler, borçlar | `etkinlik_ekle` · etkinlik ya da yapılacak |
| `butce` · limitler ve aşımlar | `not_ekle` · Markdown not |
| `nakit_akisi` · önümüzdeki günlerde ne kalacak | `butce_limiti` · aylık kategori limiti |
| `abonelikler` · düzenli çekimler | |
| `ajanda` · etkinlikler ve yapılacaklar | |
| `notlari_ara`, `not_oku` · notlar | |
| `kategoriler` · kategori listesi | |
| `net_varlik` · ay ay net varlık, reel değer, dağılım | |
| `enflasyon` · TÜFE, reel gelir-gider, kira artışı sınırı | |
| `kart_hesapla` · asgari ödeme, faiz (KKDF, BSMV dahil), kapanma süresi | |

IBAN ve kart numaralarının yalnızca son 4 hanesi paylaşılır.
