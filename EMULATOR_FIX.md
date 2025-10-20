# Android Emülatör Hatası Çözümü

## Sorun
```
The Android emulator exited with code 1
ERROR | x86_64 emulation currently requires hardware acceleration!
CPU acceleration status: Android Emulator hypervisor driver is not installed
```

## Çözüm Yolları

### ✅ Çözüm 1: Windows Hypervisor Platform'u Etkinleştir (ÖNERİLEN)

1. **Yönetici olarak PowerShell açın**
2. Şu komutu çalıştırın:
```powershell
Enable-WindowsOptionalFeature -Online -FeatureName HypervisorPlatform -NoRestart
Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform -NoRestart
```

3. **Bilgisayarı yeniden başlatın**

4. Android Studio'yu açın ve SDK Manager'dan şunu yükleyin:
   - **Android Emulator Hypervisor Driver (for Windows)**

### ✅ Çözüm 2: Android Studio SDK Manager ile

1. **Android Studio**'yu açın
2. **Tools → SDK Manager**'a gidin
3. **SDK Tools** sekmesine tıklayın
4. Şunları işaretleyin:
   - ☑️ Android Emulator Hypervisor Driver for AMD Processors (AMD işlemciniz varsa)
   - ☑️ Intel x86 Emulator Accelerator (HAXM installer) (Intel işlemciniz varsa)
5. **Apply** butonuna tıklayın

### ✅ Çözüm 3: Geçici Alternatif - Windows/Chrome ile Test

Emülatör sorunu çözülene kadar uygulamanızı şurada test edebilirsiniz:

```powershell
# Windows Desktop uygulaması olarak
flutter run -d windows

# Chrome tarayıcısında
flutter run -d chrome
```

### ✅ Çözüm 4: Fiziksel Android Cihaz Kullan

1. Android cihazınızda **USB Debugging** açın:
   - Ayarlar → Telefon Hakkında → Yapı Numarası'na 7 kez dokunun
   - Ayarlar → Geliştirici Seçenekleri → USB Debugging'i açın

2. Cihazı USB ile bilgisayara bağlayın

3. Şu komutla cihazı kontrol edin:
```powershell
flutter devices
```

4. Uygulamayı çalıştırın:
```powershell
flutter run
```

## İşlemci Tipinizi Kontrol Edin

```powershell
Get-WmiObject -Class Win32_Processor | Select-Object Name
```

- Intel ise → HAXM gerekli
- AMD ise → AMD Hypervisor gerekli

## Doğrulama

Çözüm uygulandıktan sonra:
```powershell
flutter doctor -v
flutter emulators --launch Medium_Phone_API_36.1
```
