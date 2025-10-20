# Flutter Android Mobil Uygulama

Bu proje Flutter ile geliştirilmiş bir Android mobil uygulamasıdır.

## 📱 Proje Bilgileri

- **Framework:** Flutter 3.35.6
- **Dil:** Dart 3.9.2
- **Platform:** Android
- **Organization:** com.example.uygulama

## 🚀 Kurulum

### Gereksinimler
- Flutter SDK 3.35.6 veya üzeri
- Android Studio / Android SDK
- VS Code (Flutter ve Dart eklentileri ile)
- Bir Android cihaz veya emülatör

### Flutter PATH Ayarı
```powershell
$env:PATH += ";C:\Users\PC\Desktop\program ve uygulama\flutter\bin"
```

## 🏃 Çalıştırma

1. Bağımlılıkları yükleyin:
```bash
flutter pub get
```

2. Uygulamayı çalıştırın:
```bash
flutter run
```

3. Veya VS Code'da F5 tuşuna basarak debug modunda çalıştırın.

## 📂 Proje Yapısı

```
lib/
  └── main.dart          # Ana uygulama dosyası
android/                 # Android platform dosyaları
test/                    # Test dosyaları
pubspec.yaml            # Proje bağımlılıkları
```

## 🛠️ Geliştirme

- Ana uygulama kodu: `lib/main.dart`
- Android yapılandırması: `android/app/build.gradle.kts`
- Bağımlılık yönetimi: `pubspec.yaml`

## 📚 Kaynaklar

- [Flutter Dokümantasyonu](https://docs.flutter.dev/)
- [Flutter Cookbook](https://docs.flutter.dev/cookbook)
- [Dart Dili](https://dart.dev/)
