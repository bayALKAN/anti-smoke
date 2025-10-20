# AdMob Ödüllü Reklam Kurulum Rehberi

## ✅ Yapılanlar

1. **google_mobile_ads** paketi eklendi (`pubspec.yaml`)
2. AdMob SDK başlatıldı (`main.dart`)
3. AndroidManifest.xml'e izinler ve App ID eklendi
4. İlk açılışta otomatik ödüllü reklam gösterimi eklendi

## 📱 Test Modu (Şu Anda Aktif)

Uygulama şu anda **test reklamları** gösteriyor:
- **App ID:** `ca-app-pub-3940256099942544~3347511713` (Test)
- **Rewarded Ad ID:** `ca-app-pub-3940256099942544/5224354917` (Test)

## 🚀 Gerçek AdMob'a Geçiş (Yayın İçin)

### Adım 1: AdMob Hesabı Oluştur
1. [Google AdMob](https://admob.google.com/) sitesine git
2. Google hesabınla giriş yap
3. "Uygulamalarım" > "Uygulama Ekle" tıkla
4. Platform: **Android**
5. Uygulama adı: **Sigara Bırakma**
6. Paket adı: `com.example.uygulama` (veya değiştirdiysen yenisi)

### Adım 2: Reklam Birimi Oluştur
1. Uygulamana git
2. "Reklam Birimleri" > "Reklam Birimi Ekle"
3. Tip: **Ödüllü Reklam** (Rewarded)
4. Ödüllü reklam ayarları:
   - **Ödül Miktarı:** 1
   - **Ödül Tipi:** "puan", "bonus" veya istediğin isim
5. Oluştur ve **Ad Unit ID**'yi kopyala

### Adım 3: Kodda Değiştir

**1. AndroidManifest.xml:**
```xml
<!-- Dosya: android/app/src/main/AndroidManifest.xml -->
<!-- Bu satırı bul: -->
<meta-data
    android:name="com.google.android.gms.ads.APPLICATION_ID"
    android:value="ca-app-pub-3940256099942544~3347511713"/>

<!-- AdMob'dan aldığın gerçek App ID ile değiştir: -->
<meta-data
    android:name="com.google.android.gms.ads.APPLICATION_ID"
    android:value="ca-app-pub-XXXXXXXXXXXXXXXX~YYYYYYYYYY"/>
```

**2. main.dart:**
```dart
// Dosya: lib/main.dart
// Bu satırı bul (satır ~129):
adUnitId: 'ca-app-pub-3940256099942544/5224354917', // Test ID

// AdMob'dan aldığın gerçek Rewarded Ad ID ile değiştir:
adUnitId: 'ca-app-pub-XXXXXXXXXXXXXXXX/YYYYYYYYYY', // Gerçek ID
```

### Adım 4: Test Et
1. Uygulamayı sil
2. Yeniden yükle: `flutter clean && flutter run`
3. İlk açılışta gerçek reklam görünmeli (boş olabilir ilk günlerde)

## 📋 Önemli Notlar

### ⚠️ Geliştirme Sırasında
- **Test ID'lerini kullan!** Gerçek ID'lerle kendi reklamlarına tıklarsan hesabın kapatılabilir
- Test reklamları "Test Ad" yazan banner gösterir

### 💰 Yayına Almadan Önce
- Gerçek ID'leri ekle
- Google Play Console'a yükle
- AdMob ile uygulamayı bağla

### 🎯 Reklam Stratejisi
Mevcut durumda:
- ✅ İlk açılışta 1 kez ödüllü reklam
- ❌ Her açılışta gösterme (kullanıcı rahatsız olur)

**Öneriler:**
- Her 3. açılışta göster
- Belirli hedeflere ulaşınca göster (örn: 7 gün doldurdu)
- "Reklam İzle" butonu ekle (isteğe bağlı)

### 📊 Kazanç Takibi
AdMob panelinden:
- Günlük kazanç
- Gösterim sayısı
- Tıklama oranı (CTR)
- eCPM (1000 gösterim başına kazanç)

## 🔧 Sorun Giderme

**Problem:** Reklam görünmüyor
- **Çözüm 1:** İnternet bağlantısını kontrol et
- **Çözüm 2:** AdMob hesabında uygulama onaylandı mı kontrol et (2-3 gün sürebilir)
- **Çözüm 3:** Test ID'leri kullanıyorsan mutlaka çalışır, gerçek ID'lerde ilk gün boş olabilir

**Problem:** "Ad failed to load" hatası
- **Çözüm:** Normal, her zaman reklam envanter'i olmayabilir. Kod otomatik 60 saniye sonra tekrar deniyor

## 📞 Destek
- [AdMob Yardım](https://support.google.com/admob)
- [Flutter Google Mobile Ads Docs](https://pub.dev/packages/google_mobile_ads)
