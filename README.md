# Metro Mate 🚇

[![Flutter CI](https://github.com/royalcourtbd/metro_mate/actions/workflows/flutter_ci.yml/badge.svg)](https://github.com/royalcourtbd/metro_mate/actions/workflows/flutter_ci.yml)
[![Release APK](https://github.com/royalcourtbd/metro_mate/actions/workflows/release_cd.yml/badge.svg)](https://github.com/royalcourtbd/metro_mate/actions/workflows/release_cd.yml)
[![Security Scan](https://github.com/royalcourtbd/metro_mate/actions/workflows/security_scan.yml/badge.svg)](https://github.com/royalcourtbd/metro_mate/actions/workflows/security_scan.yml)
[![Latest Release](https://img.shields.io/github/v/release/royalcourtbd/metro_mate)](https://github.com/royalcourtbd/metro_mate/releases)
[![Code Coverage](https://codecov.io/gh/royalcourtbd/metro_mate/branch/main/graph/badge.svg)](https://codecov.io/gh/royalcourtbd/metro_mate)

🚇 Metro Mate - Check your MRT Pass & Rapid Pass balance instantly! Built with Flutter & Clean Architecture for Bangladesh Metro Rail commuters. Features: Balance check, transaction history, station info, fare calculator & more.

## 📱 Download Latest Release

![Release](https://github.com/royalcourtbd/metro_mate/actions/workflows/release_cd.yml/badge.svg)

> Every tag like `v1.0.0` auto-builds a release APK with security hardening.

[⬇ **Download Latest APK from Releases**](https://github.com/royalcourtbd/metro_mate/releases)

### Installation Guide

1. **Download APK**: Click the link above to go to releases page
2. **Enable Unknown Sources**: Go to Settings > Security > Enable "Unknown Sources"
3. **Install**: Open the downloaded APK and install

### Features

- 💳 **Balance Check**: Instantly check your MRT Pass & Rapid Pass balance
- 📊 **Transaction History**: View your recent transactions
- 🗺️ **Station Info**: Get information about metro stations
- 💰 **Fare Calculator**: Calculate fare between stations
- 🎨 **Modern UI**: Beautiful and intuitive user interface
- 🏗️ **Clean Architecture**: Built with maintainable code structure

## 🚀 For Developers

### Prerequisites

- Flutter SDK 3.32.5 or higher
- Dart SDK
- Android Studio or VS Code

### Getting Started

1. **Clone the repository**

   ```bash
   git clone https://github.com/royalcourtbd/metro_mate.git
   cd metro_mate
   ```

2. **Install dependencies**

   ```bash
   flutter pub get
   ```

3. **Generate build files**

   ```bash
   dart run build_runner build --delete-conflicting-outputs
   ```

4. **Run the app**
   ```bash
   flutter run
   ```

### Build Commands

- **Debug APK**: `flutter build apk --debug`
- **Release APK**: `flutter build apk --release`
- **Release AAB**: `flutter build appbundle --release`

### Python Build Script

We have a convenient Python build script for development:

```bash
python3 flutter_build.py
```

Available options:

- `1` - Build & Install Release APK
- `2` - Build APK (Debug)
- `3` - Build AAB (Release)
- `4` - Full Setup (Clean + Dependencies + Build Runner)
- `5` - Generate Localizations
- `6` - Run Build Runner
- `7` - Repair Pub Cache
- `8` - Cleanup Project
- `9` - Update iOS Pods

## 🔄 CI/CD Pipeline

### Continuous Integration (CI)

- **Trigger**: Every Pull Request to `main` branch
- **Actions**:
  - Code analysis (`flutter analyze`)
  - Run tests (`flutter test`)
  - Check code formatting
  - Build debug APK

### Continuous Deployment (CD)

- **Trigger**: Version tags (e.g., `v1.0.0`)
- **Actions**:
  - Build release APK & AAB
  - Create GitHub Release
  - Upload APK/AAB to release
  - Generate release notes

### Manual Build

- Go to **Actions** tab in GitHub
- Select **Manual APK Build**
- Choose build type (debug/release)
- Download from artifacts

## 📦 Release Process

1. **Update version** in `pubspec.yaml`
2. **Commit changes** to `main` branch
3. **Create and push tag**:
   ```bash
   git tag v1.0.0
   git push origin v1.0.0
   ```
4. **GitHub Actions** will automatically:
   - Build APK & AAB
   - Create release
   - Upload files

## 🏗️ Architecture

This project follows **Clean Architecture** principles:

```
lib/
├── app/                 # App configuration
├── core/               # Core functionality
│   ├── base/          # Base classes
│   ├── config/        # App configuration
│   ├── di/            # Dependency injection
│   └── utility/       # Utilities
├── features/          # Feature modules
│   └── home/         # Home feature
└── shared/           # Shared widgets
```

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 Author

**Royal Court BD**

- GitHub: [@royalcourtbd](https://github.com/royalcourtbd)

---

### 🔖 Version History

| Version | Release Date | Changes         |
| ------- | ------------ | --------------- |
| v1.0.0  | Coming Soon  | Initial release |

> **Note**: This app is built for Bangladesh Metro Rail users. The CI/CD pipeline ensures code quality and automated releases.
