# Android Studio Kurulum Rehberi (Flutter için)

## 📥 ADIM 1: Android Studio İndir

1. **Resmi siteden indir:** https://developer.android.com/studio
2. **Windows .exe dosyasını** indir (yaklaşık 1 GB)

## 🔧 ADIM 2: Kurulum

### Kurulum Sırasında Dikkat!

1. **Android Studio Setup Wizard** açılacak
2. **Install Type:** "Standard" seçin (önerilir)
3. **Theme:** İstediğinizi seçin (Darcula veya Light)
4. **SDK Components:** Şunları kontrol edin:
   - ✅ Android SDK
   - ✅ Android SDK Platform
   - ✅ Android Virtual Device (AVD)
   - ✅ Performance (Intel® HAXM) - Intel işlemcilerde

5. **Kurulum Yolu:** 
   - Varsayılan: `C:\Program Files\Android\Android Studio`
   - SDK Yolu: `C:\Users\PC\AppData\Local\Android\Sdk` (otomatik)

6. **"Finish"** butonuna tıklayın ve kurulum tamamlansın

## ⚙️ ADIM 3: İlk Açılış ve Yapılandırma

### 3.1. SDK Manager'ı Aç
1. Android Studio'yu başlat
2. **More Actions** → **SDK Manager**'ı tıkla

### 3.2. SDK Platforms (Gerekli Android Sürümleri)
**SDK Platforms** sekmesinde şunları yükle:

- ✅ **Android 14.0 (UpsideDownCake)** - API Level 34
- ✅ **Android 13.0 (Tiramisu)** - API Level 33
- ✅ **Android SDK Platform-Tools**
- ✅ **Android SDK Build-Tools** (en son sürüm)

### 3.3. SDK Tools (Gerekli Araçlar)
**SDK Tools** sekmesinde şunları yükle:

- ✅ **Android SDK Build-Tools**
- ✅ **Android SDK Command-line Tools**
- ✅ **Android Emulator**
- ✅ **Android Emulator hypervisor driver (installer)** ⚠️ ÖNEMLİ!
- ✅ **Android SDK Platform-Tools**
- ✅ **Intel x86 Emulator Accelerator (HAXM installer)** - Intel işlemci için
- ✅ **Google Play Services**

**Apply** → **OK** butonuna tıkla ve yüklensin

## 🔌 ADIM 4: Flutter Entegrasyonu

### 4.1. Flutter Plugin Yükle

1. Android Studio'da: **File** → **Settings** (veya **Ctrl+Alt+S**)
2. **Plugins** sekmesine git
3. **Marketplace** sekmesinde "Flutter" ara
4. **Flutter** plugin'ini yükle (Dart otomatik gelir)
5. **Restart IDE** tıkla

### 4.2. Flutter'ı Android Studio'ya Tanıt

PowerShell'de şunu çalıştır:
```powershell
flutter config --android-sdk "C:\Users\PC\AppData\Local\Android\Sdk"
flutter doctor --android-licenses
```

**Android Licenses:** Tüm lisansları kabul etmek için `y` yazın

## 📱 ADIM 5: Emülatör Oluştur

### 5.1. Device Manager'ı Aç
1. Android Studio → **More Actions** → **Virtual Device Manager**
2. **Create Device** butonuna tıkla

### 5.2. Cihaz Seç
- **Category:** Phone
- **Önerilen:** Pixel 5, Pixel 6, veya Pixel 7
- **Next** tıkla

### 5.3. System Image Seç
- **Recommended** sekmesinde:
  - **Tiramisu (API 33)** veya **UpsideDownCake (API 34)** seç
  - **x86_64** ABI seç (hızlı)
  - **Download** tıkla ve indir
- **Next** → **Finish**

## 🚀 ADIM 6: Hypervisor Sorunu Çözümü

### Windows Hypervisor Platform'u Etkinleştir

**Yönetici PowerShell'de** (SAĞ TIK → Yönetici olarak çalıştır):

```powershell
Enable-WindowsOptionalFeature -Online -FeatureName HypervisorPlatform -NoRestart
Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform -NoRestart
```

**VEYA** projede hazır script'i çalıştır:
- `enable_hypervisor.bat` dosyasına **SAĞ TIK** → **Yönetici olarak çalıştır**

⚠️ **Bilgisayarı yeniden başlat!**

## ✅ ADIM 7: Doğrulama

Kurulumun doğru olduğunu kontrol et:

```powershell
flutter doctor -v
```

**Beklenen Çıktı:**
```
[✓] Flutter (Channel stable, 3.35.6)
[✓] Android toolchain - develop for Android devices (Android SDK version XX.X.X)
[✓] Android Studio (version 20XX.X)
[✓] VS Code
[✓] Connected device (1 available)
```

## 🧪 ADIM 8: Test Et

### Emülatörü Başlat
```powershell
flutter emulators
flutter emulators --launch <emulator_id>
```

### Uygulamayı Çalıştır
```powershell
cd C:\Users\PC\Desktop\uygulama
flutter run
```

## ⚠️ Yaygın Sorunlar ve Çözümler

### Sorun 1: "Android licenses not accepted"
```powershell
flutter doctor --android-licenses
```
Tüm lisanslara `y` ile kabul et.

### Sorun 2: "Android SDK not found"
```powershell
flutter config --android-sdk "C:\Users\PC\AppData\Local\Android\Sdk"
```

### Sorun 3: "Emulator hypervisor error"
- `enable_hypervisor.bat` yönetici olarak çalıştır
- Bilgisayarı yeniden başlat

### Sorun 4: "cmdline-tools not found"
- Android Studio → SDK Manager → SDK Tools
- ✅ "Android SDK Command-line Tools" yükle

## 📋 Özet Kontrol Listesi

- [ ] Android Studio indirildi ve kuruldu
- [ ] SDK Manager'dan gerekli paketler yüklendi
- [ ] Flutter ve Dart plugin'leri kuruldu
- [ ] Android licenses kabul edildi
- [ ] Emülatör oluşturuldu
- [ ] Hypervisor etkinleştirildi (bilgisayar yeniden başlatıldı)
- [ ] `flutter doctor` başarılı
- [ ] `flutter run` test edildi

## 🔗 Faydalı Linkler

- [Android Studio Resmi Dokümantasyon](https://developer.android.com/studio/intro)
- [Flutter Android Setup](https://docs.flutter.dev/get-started/install/windows/mobile#configure-android-development)
- [Android Emulator Troubleshooting](https://developer.android.com/studio/run/emulator-troubleshooting)

---

**Hazırlayan:** GitHub Copilot  
**Tarih:** 19 Ekim 2025  
**Proje:** Flutter Android Mobile Application (uygulama)
