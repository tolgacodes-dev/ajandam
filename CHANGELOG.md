# Yenilikler

Ajandam'ın sürüm notları. Her sürümün ilk bölümü uygulama içindeki güncelleme penceresinde de gösterilir.
Sürüm numaraları [anlamsal sürümlemeye](https://semver.org/lang/tr/) uyar.

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
