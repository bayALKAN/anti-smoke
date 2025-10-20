# Sigara Bırakma Uygulaması - Flutter Android

Modern, animasyonlu ve kullanıcı dostu bir sigara bırakma takip uygulaması.

## Proje Bilgileri

- **Framework:** Flutter 3.35.6 with Dart SDK 3.9.2
- **Platform:** Android (primary), with web/Windows fallback
- **Paket:** `com.example.uygulama`
- **Uygulama Türü:** Sağlık & Wellness - Sigara bırakma takip

## Uygulama Özellikleri

### 🎨 Modern Tasarım
- **Animasyonlu UI:** TweenAnimationBuilder ile akıcı animasyonlar
- **Gradient tasarımlar:** Renkli ve çekici kart bazlı arayüz
- **Kompakt layout:** Ekran alanını verimli kullanan tasarım
- **Material Design 3:** En yeni tasarım dili
- **Google Fonts (Poppins):** Modern tipografi
- **Dark mode desteği:** Sistem temasına uyum

### 📊 Ana Özellikler
1. **Zamanlayıcı:** Sigarayı bıraktıktan sonra geçen süre (gün/saat/dakika)
2. **Tasarruf Hesaplayıcı:** Biriktirilen para hesabı
3. **İçilmeyen Sigara:** Kaçınılan sigara sayısı
4. **Sağlık İyileşmeleri:** Zamana göre vücut iyileşme mesajları
5. **Motivasyon Sistemi:** Günlere göre özel teşvik mesajları

### 💾 Veri Yönetimi
- SharedPreferences ile lokal veri saklama
- Başlangıç tarihi kalıcı kayıt
- Uygulama kapatılsa bile verilerin korunması

### Project Structure
```
lib/main.dart           # Entry point - Standard Flutter counter demo app
android/                # Native Android configuration (Kotlin, Gradle KTS)
test/widget_test.dart   # Widget tests using flutter_test
pubspec.yaml           # Dependencies: cupertino_icons ^1.0.8, flutter_lints ^5.0.0
```

## Critical Development Workflows

### Environment Setup (Windows-Specific)
This project runs on Windows. The Flutter PATH must be set in PowerShell:
```powershell
$env:PATH += ";C:\Users\PC\Desktop\program ve uygulama\flutter\bin"
```

### Running the Application
1. **Primary method:** `flutter run` (requires emulator or device)
2. **Fallback testing:** `flutter run -d windows` or `flutter run -d chrome`
3. **VS Code:** Press F5 for debug mode with hot reload

### Testing
Run widget tests with: `flutter test`
The project includes a counter increment smoke test in `test/widget_test.dart`.

## Android Emulator Issues (KNOWN CRITICAL ISSUE)

This project has documented emulator hypervisor problems on Windows. See `EMULATOR_FIX.md` for details.

**Quick fixes:**
1. Enable Windows Hypervisor Platform (requires admin + restart):
   ```powershell
   Enable-WindowsOptionalFeature -Online -FeatureName HypervisorPlatform -NoRestart
   Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform -NoRestart
   ```
2. Or run the provided `enable_hypervisor.bat` as administrator
3. Or use physical device with USB debugging enabled
4. Or test on Windows/Chrome platform instead

**Verify emulator:** `flutter emulators --launch Medium_Phone_API_36.1`

## Build Configuration

### Android (Gradle KTS)
- `android/app/build.gradle.kts` uses Kotlin DSL
- Package: `com.example.uygulama`
- Compile/Target SDK: Managed by Flutter plugin
- Java Version: 11
- MainActivity: Kotlin-based (`MainActivity.kt`) extending `FlutterActivity`
- Debug signing used for release builds (TODO: Add production signing config)

### Dependencies Management
- Use `flutter pub get` to install dependencies
- Use `flutter pub upgrade` to update packages
- Linting enforced via `flutter_lints` package (configured in `analysis_options.yaml`)

## Code Conventions

### Widget Patterns
- **Stateless widgets:** Use `const` constructors (e.g., `const MyApp({super.key})`)
- **Stateful widgets:** Private state classes with underscore prefix (`_MyHomePageState`)
- **State updates:** Always wrap changes in `setState(() { ... })`
- **Material Design:** Theme uses `ColorScheme.fromSeed()` approach

### File Organization
- All app code resides in `lib/` (currently single-file `main.dart`)
- Tests mirror the lib structure in `test/`
- Assets declared in `pubspec.yaml` under `flutter.assets` section

### Linting
- Follows `package:flutter_lints/flutter.yaml` rules
- Enforces modern Flutter best practices (e.g., const constructors, proper widget patterns)

## Language & Localization
- **Project language:** Turkish (README, documentation, comments in Turkish)
- **Code language:** English (following Flutter conventions)
- Translate user-facing messages when adding features

## Common Commands (PowerShell)

```powershell
flutter doctor -v              # Verify Flutter installation and dependencies
flutter devices                # List available devices/emulators
flutter pub get                # Install dependencies
flutter run                    # Run on connected device
flutter test                   # Run all tests
flutter analyze                # Static analysis
flutter clean                  # Clean build cache
```

## Key Files to Modify

- **App logic:** `lib/main.dart`
- **Dependencies:** `pubspec.yaml`
- **Android config:** `android/app/build.gradle.kts`
- **App ID/namespace:** Update `com.example.uygulama` in `build.gradle.kts` for production
- **Icons/assets:** Add to `android/app/src/main/res/` and declare in `pubspec.yaml`
