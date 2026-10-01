# Yapay zeka

Ajandam'ın yapay zekası API anahtarı istemez; Mac'indeki modellerle ya da zaten kullandığın uygulamalarla çalışır.
Hangisinin kullanılacağını **Ayarlar › Yapay zeka** bölümünden seçersin. **Otomatik** seçiliyken açık bir yerel model
(Ollama, LM Studio) varsa o, yoksa Apple Intelligence kullanılır.

## Neler yapar

- **Ajandam Asistanı** (⇧⌘A, menü çubuğu ya da ⌘K): "Bu ay markete ne harcadım, geçen aya göre?", "Net varlığım
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

## Yerel model (Ollama, LM Studio)

[Ollama](https://ollama.com) ya da [LM Studio](https://lmstudio.ai) açıksa Ajandam modelleri kendiliğinden bulur;
hangisinin kullanılacağını ayarlardan seçersin. Her şey Mac'inde kalır. Türkçeyi iyi bilen, talimat izleyen ve en az
7–8 milyar parametreli bir model öneririz; küçük modeller ekstre okumada satır atlayabilir (mutabakat bunu yakalar).

## Claude (masaüstü uygulaması)

Claude, Ajandam'a [MCP](https://modelcontextprotocol.io) ile bağlanır; Claude'da sohbet ederken kayıtlarına bakabilir,
analiz yapabilir ve ekleme önerebilir.

1. **Ayarlar › Yapay zeka › Claude'a bağla** düğmesine bas (bağlantı izni de açılır): Ajandam uzantısı Claude
   masaüstü uygulamasında açılır, **Yükle** de. Sürümler sayfasındaki `Ajandam-Claude.mcpb` dosyasını açmak da aynı işi görür.
2. Claude'a "Ajandam'a göre bu ay nereye harcadım?" gibi sorular sorabilirsin.

Bağlantıyı **Yapay zeka uygulamaları bağlanabilir** anahtarıyla istediğin an kapatabilirsin.

## Diğer MCP uygulamaları

Cursor, LM Studio, VS Code gibi MCP destekleyen uygulamalar da bağlanabilir. Ayarlardaki **Kopyala** düğmesi şu
biçimdeki yapılandırmayı verir:

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

`Ajandam --mcp`, standart giriş/çıkış üzerinden konuşan bir MCP sunucusudur. İstekleri çalışan Ajandam'a yalnızca
senin kullanıcı hesabının erişebildiği yerel bir soketle iletir (Ajandam açık değilse arka planda açar). Bağlantı izni
kapalıyken ya da Ajandam kilitliyken istekler cevaplanmaz.

### Araçlar

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
