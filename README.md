# Metro Mate 🚇

[![Flutter CI](https://github.com/royalcourtbd/metro_mate/actions/workflows/flutter_ci.yml/badge.svg)](https://github.com/royalcourtbd/metro_mate/actions/workflows/flutter_ci.yml)
[![Release APK](https://github.com/royalcourtbd/metro_mate/actions/workflows/release_cd.yml/badge.svg)](https://github.com/royalcourtbd/metro_mate/actions/workflows/release_cd.yml)
[![Security Scan](https://github.com/royalcourtbd/metro_mate/actions/workflows/security_scan.yml/badge.svg)](https://github.com/royalcourtbd/metro_mate/actions/workflows/security_scan.yml)
[![Manual Build](https://github.com/royalcourtbd/metro_mate/actions/workflows/manual_build.yml/badge.svg)](https://github.com/royalcourtbd/metro_mate/actions/workflows/manual_build.yml)
[![Latest Release](https://img.shields.io/github/v/release/royalcourtbd/metro_mate)](https://github.com/royalcourtbd/metro_mate/releases)
[![Code Coverage](https://codecov.io/gh/royalcourtbd/metro_mate/branch/main/graph/badge.svg)](https://codecov.io/gh/royalcourtbd/metro_mate)
[![Flutter Version](https://img.shields.io/badge/Flutter-3.32.5-blue.svg)](https://flutter.dev/)
[![Dart Version](https://img.shields.io/badge/Dart-3.8.0-blue.svg)](https://dart.dev/)

🚇 **Metro Mate** - Your comprehensive companion for Bangladesh Metro Rail system! Built with Flutter using Clean Architecture principles, featuring real-time balance check, transaction history, station information, fare calculator, and more for MRT Pass & Rapid Pass users.

## 📱 Download Latest Release

[![Release APK](https://github.com/royalcourtbd/metro_mate/actions/workflows/release_cd.yml/badge.svg)](https://github.com/royalcourtbd/metro_mate/actions/workflows/release_cd.yml)

> **Automated Releases**: Every version tag (`v1.0.0`, `v1.1.0`, etc.) automatically triggers our CI/CD pipeline to build and release secure APK & AAB files with obfuscation.

[⬇ **Download Latest APK from Releases**](https://github.com/royalcourtbd/metro_mate/releases)

### 📋 Installation Guide

1. **Download APK**: Click the link above to go to releases page
2. **Enable Unknown Sources**: Go to Settings > Security > Enable "Unknown Sources"
3. **Install**: Open the downloaded APK and install

### ✨ Key Features

- 💳 **MRT Pass & Rapid Pass Balance Check**: Instantly check your metro card balance
- 📊 **Transaction History**: View detailed transaction records
- 🗺️ **Station Information**: Comprehensive metro station details
- 💰 **Fare Calculator**: Calculate fares between any two stations
- 🚇 **Real-time Updates**: Live metro system information
- 🎨 **Modern Material Design**: Beautiful and intuitive user interface
- 🔒 **Security First**: Code obfuscation and security scanning
- 🏗️ **Clean Architecture**: Maintainable and scalable codebase
- 🌐 **Multi-platform**: Available for Android, iOS, Web, Windows, macOS, and Linux

## 🚀 Development Setup

### 📋 Prerequisites

- **Flutter SDK**: 3.32.5 or higher
- **Dart SDK**: 3.8.0 or higher
- **Android Studio** or **VS Code** with Flutter extension
- **Git** for version control
- **Python 3.x** (for build automation scripts)

### 🛠️ Getting Started

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

### 🔨 Build Commands

- **Debug APK**: `flutter build apk --debug`
- **Release APK**: `flutter build apk --release --obfuscate --split-debug-info=./debug-info`
- **Release AAB**: `flutter build appbundle --release --obfuscate --split-debug-info=./debug-info`
- **Web**: `flutter build web`
- **Windows**: `flutter build windows`
- **macOS**: `flutter build macos`
- **Linux**: `flutter build linux`

### 🐍 Python Build Automation

We provide a comprehensive Python build script for development workflow:

```bash
python3 flutter_build.py
```

**Available Options:**

| Option | Description                                         |
| ------ | --------------------------------------------------- |
| `1`    | 📱 Build & Install Release APK                      |
| `2`    | 🐛 Build APK (Debug)                                |
| `3`    | 📦 Build AAB (Release)                              |
| `4`    | 🔧 Full Setup (Clean + Dependencies + Build Runner) |
| `5`    | 🌐 Generate Localizations                           |
| `6`    | ⚡ Run Build Runner                                 |
| `7`    | 🔧 Repair Pub Cache                                 |
| `8`    | 🧹 Cleanup Project                                  |
| `9`    | 🍎 Update iOS Pods                                  |

### 🏗️ Project Structure Generator

Create new features with proper Clean Architecture structure:

```bash
python3 create_page.py page <feature_name>
```

This generates:

- Feature directories with Clean Architecture layers
- Repository pattern implementation
- Presenter and UI State management
- Dependency injection setup
- Automatic service locator registration

## 🔄 CI/CD & Automation Pipeline

Our robust CI/CD pipeline ensures code quality, security, and automated releases across multiple workflows:

### 🧪 Continuous Integration (CI) - `flutter_ci.yml`

**Triggers**: Pull Requests to `main` branch

**Pipeline Steps**:

- ✅ **Code Quality**: `flutter analyze` for static analysis
- 🧪 **Testing**: `flutter test --coverage` with code coverage
- 📊 **Coverage Upload**: Automatic upload to Codecov
- 🎯 **Format Check**: `dart format` validation
- 🔧 **Build Validation**: Debug APK build verification
- 📦 **Dependency Caching**: Optimized pub cache & Gradle cache

### 🚀 Continuous Deployment (CD) - `release_cd.yml`

**Triggers**: Version tags (`v*.*.*` pattern)

**Advanced Features**:

- 🔒 **Security Hardened**: Code obfuscation with `--obfuscate`
- 📊 **Debug Info**: Split debug information for crash analysis
- 📈 **Dynamic Changelogs**: Auto-generated from git commits
- 📦 **Multi-format**: Both APK and AAB generation
- 🌍 **Timezone Support**: Bangladesh time formatting
- 📁 **Artifact Management**: 30-day retention policy
- 🔖 **Rich Releases**: Detailed release notes with file sizes

**Release Assets**:

- 📱 `app-release.apk` - Direct installation
- 📦 `app-release.aab` - Google Play Store bundle

### 🛡️ Security Scanning - `security_scan.yml`

**Triggers**:

- Push to `main` branch
- Pull requests to `main`
- Weekly scheduled scans (Monday 2 AM)

**Security Checks**:

- 🔍 **Dependency Scanning**: `dart pub deps` analysis
- 📋 **Outdated Packages**: JSON report generation
- 🔒 **Static Analysis**: Security-focused code analysis
- 📊 **Artifact Upload**: Security reports storage

### ⚡ Manual Build Workflow - `manual_build.yml`

**On-Demand Features**:

- 🎛️ **Interactive Inputs**: Choose debug/release build type
- ☑️ **Artifact Control**: Optional artifact upload
- 🔄 **Full Pipeline**: Analysis, testing, and building
- 📊 **Build Summaries**: Detailed build information

### 🔧 Advanced CI/CD Features

- **🗂️ Multi-level Caching**: Flutter, Pub, and Gradle caches
- **📋 Code Quality Gates**: Mandatory analysis and formatting
- **🔒 Security First**: Weekly vulnerability scans
- **📊 Coverage Tracking**: Automated code coverage reporting
- **🏷️ Smart Tagging**: Semantic versioning support
- **🌍 Global Distribution**: Multi-platform support ready
- **⚡ Performance Optimized**: Parallel job execution

## 📦 Release Management

### 🏷️ Semantic Versioning

We follow [Semantic Versioning](https://semver.org/) principles:

- **MAJOR** (`v2.0.0`): Breaking changes
- **MINOR** (`v1.1.0`): New features (backward compatible)
- **PATCH** (`v1.0.1`): Bug fixes (backward compatible)

### 🚀 Release Process

1. **Update Version**

   ```bash
   # Update version in pubspec.yaml
   version: 1.1.0+2
   ```

2. **Commit Changes**

   ```bash
   git add .
   git commit -m "🚀 Release v1.1.0: Add new features"
   git push origin main
   ```

3. **Create & Push Tag**

   ```bash
   git tag -a v1.1.0 -m "Release v1.1.0"
   git push origin v1.1.0
   ```

4. **Automated Pipeline** 🤖
   - Triggers release workflow
   - Builds APK & AAB with obfuscation
   - Creates GitHub release with changelogs
   - Uploads artifacts automatically

### 📋 Release Checklist

- [ ] Update version in `pubspec.yaml`
- [ ] Update changelog/release notes
- [ ] Run local tests: `flutter test`
- [ ] Check code analysis: `flutter analyze`
- [ ] Create and push version tag
- [ ] Verify GitHub release creation
- [ ] Test downloaded APK installation

## 🏗️ Architecture & Code Quality

### 🧱 Clean Architecture Implementation

This project follows **Clean Architecture** principles with dependency inversion:

```
lib/
├── 📱 app/                    # Application layer
│   └── metro_mate.dart       # Main app configuration
├── 🔧 core/                  # Core functionality
│   ├── base/                # Base classes & interfaces
│   │   ├── base_presenter.dart
│   │   ├── base_ui_state.dart
│   │   ├── base_use_case.dart
│   │   └── result.dart
│   ├── config/              # App configuration
│   │   ├── app_color.dart
│   │   ├── app_theme_color.dart
│   │   └── themes.dart
│   ├── di/                  # Dependency injection
│   │   ├── service_locator.dart
│   │   └── setup/
│   ├── service/             # Core services
│   ├── utility/             # Utility functions
│   ├── static/              # Constants & static data
│   └── external_libs/       # Custom external libraries
├── 🎯 features/              # Feature modules (Clean Architecture)
│   ├── home/                # Home feature
│   │   ├── data/           # Data layer
│   │   │   └── repositories/
│   │   ├── domain/         # Domain layer
│   │   │   ├── entities/
│   │   │   ├── repositories/
│   │   │   └── usecases/
│   │   ├── presentation/   # Presentation layer
│   │   │   ├── presenter/
│   │   │   ├── ui/
│   │   │   └── widgets/
│   │   └── di/            # Feature DI setup
│   └── fare/               # Fare calculation feature
└── 🎨 shared/               # Shared UI components
    └── widgets/
```

### 🎯 Architecture Patterns

- **🏛️ Clean Architecture**: Separation of concerns with clear boundaries
- **📋 Repository Pattern**: Data abstraction layer
- **🎭 Presenter Pattern**: Business logic separation from UI
- **💉 Dependency Injection**: Using GetIt service locator
- **🔄 State Management**: Custom presenter-based state management
- **🧩 Feature-based Structure**: Modular architecture for scalability

### 📊 Code Quality Metrics

- **📝 Linting**: Flutter Lints package with custom rules
- **🧪 Testing**: Unit tests with coverage tracking
- **📋 Analysis**: Static code analysis with `flutter analyze`
- **🎨 Formatting**: Consistent code formatting with `dart format`
- **🔒 Security**: Regular dependency scanning and vulnerability checks

### 🔧 Development Tools & Libraries

**Core Dependencies:**

- **State Management**: GetX (`get: ^4.7.2`)
- **Dependency Injection**: GetIt (`get_it: ^8.0.3`)
- **Networking**: Dio (`dio: ^5.8.0+1`)
- **Local Storage**: Hive (`hive: ^2.2.3`)
- **Logging**: Talker Logger (`talker_logger: ^4.9.2`)
- **Functional Programming**: FpDart (`fpdart: ^1.1.1`)

**UI & Design:**

- **Vector Graphics**: Flutter SVG (`flutter_svg: ^2.2.0`)
- **Cached Images**: Cached Network Image (`cached_network_image: ^3.4.1`)
- **Custom Fonts**: Outfit font family
- **Material Design**: Custom theme implementation

**Platform Integration:**

- **Device Info**: Package Info Plus (`package_info_plus: ^8.3.0`)
- **Network Info**: Network Info Plus (`network_info_plus: ^6.1.4`)
- **File System**: Path Provider (`path_provider: ^2.1.5`)
- **URL Launcher**: URL Launcher (`url_launcher: ^6.3.1`)
- **Share**: Share Plus (`share_plus: ^11.0.0`)

**Development Tools:**

- **Code Generation**: Build Runner (`build_runner: ^2.5.4`)
- **Hive Generator**: Hive Generator (`hive_generator: ^2.0.1`)
- **Linting**: Flutter Lints (`flutter_lints: ^5.0.0`)

## 🤝 Contributing

We welcome contributions to Metro Mate! Please follow these guidelines:

### 🔄 Development Workflow

1. **Fork & Clone**

   ```bash
   git clone https://github.com/your-username/metro_mate.git
   cd metro_mate
   ```

2. **Create Feature Branch**

   ```bash
   git checkout -b feature/amazing-feature
   ```

3. **Development Setup**

   ```bash
   flutter pub get
   dart run build_runner build --delete-conflicting-outputs
   ```

4. **Code Quality Checks**

   ```bash
   flutter analyze
   dart format .
   flutter test
   ```

5. **Commit & Push**

   ```bash
   git commit -m 'feat: Add amazing feature'
   git push origin feature/amazing-feature
   ```

6. **Create Pull Request**

### 📋 Contribution Guidelines

- Follow Clean Architecture principles
- Maintain 80%+ test coverage
- Use conventional commits format
- Update documentation as needed
- Ensure all CI checks pass

### 🐛 Bug Reports

Use our [issue template](https://github.com/royalcourtbd/metro_mate/issues/new) with:

- Device information
- Steps to reproduce
- Expected vs actual behavior
- Screenshots/logs if applicable

## 🛡️ Security & Performance

### 🔒 Security Features

- **📱 Code Obfuscation**: Release builds use `--obfuscate` flag
- **🔍 Weekly Security Scans**: Automated vulnerability assessment
- **📊 Dependency Auditing**: Regular package security checks
- **🛡️ Static Analysis**: Security-focused code analysis
- **🔐 Secure Build Pipeline**: Protected secrets and secure workflows

### ⚡ Performance Optimizations

- **📦 Build Caching**: Multi-level caching for faster builds
- **🎯 Code Splitting**: Feature-based modular architecture
- **💾 Efficient State Management**: Custom presenter pattern
- **🖼️ Image Optimization**: Cached network images with SVG support
- **⚡ Lazy Loading**: Service locator with lazy initialization

### 🌍 Multi-Platform Support

| Platform       | Status              | Build Command           |
| -------------- | ------------------- | ----------------------- |
| 🤖 **Android** | ✅ Production Ready | `flutter build apk`     |
| 🍎 **iOS**     | ✅ Ready            | `flutter build ios`     |
| 🌐 **Web**     | ✅ Ready            | `flutter build web`     |
| 🪟 **Windows** | ✅ Ready            | `flutter build windows` |
| 🍎 **macOS**   | ✅ Ready            | `flutter build macos`   |
| 🐧 **Linux**   | ✅ Ready            | `flutter build linux`   |

### 📊 Monitoring & Analytics

- **📈 Code Coverage**: Automated coverage tracking with Codecov
- **🔍 Error Tracking**: Comprehensive error handling
- **📊 Build Metrics**: Automated build size and performance tracking
- **🎯 Quality Gates**: Mandatory code quality checks

## 📄 License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 Author & Team

**Royal Court BD** - _Lead Developer & Maintainer_

- 🌐 **GitHub**: [@royalcourtbd](https://github.com/royalcourtbd)
- 📧 **Contact**: [Create an issue](https://github.com/royalcourtbd/metro_mate/issues) for support
- 🔗 **Project**: [Metro Mate](https://github.com/royalcourtbd/metro_mate)

## 🙏 Acknowledgments

- 🚇 **Bangladesh Metro Rail** for inspiring this project
- 🔧 **Flutter Team** for the amazing framework
- 🎨 **Material Design** for UI/UX guidelines
- 🤝 **Open Source Community** for valuable packages and tools

---

## 🔖 Version History & Roadmap

### Current Version

| Version    | Release Date | Status            | Key Features                       |
| ---------- | ------------ | ----------------- | ---------------------------------- |
| **v1.0.0** | Coming Soon  | 🚧 In Development | Initial release with core features |

### 🎯 Planned Features (Roadmap)

- 📱 **v1.1.0**: Real-time metro schedule integration
- 🗺️ **v1.2.0**: Interactive metro map with route planning
- 🎫 **v1.3.0**: Digital ticket booking integration
- 🔔 **v1.4.0**: Push notifications for metro updates
- 🌐 **v2.0.0**: Web dashboard and admin panel

### 📊 Development Stats

- **📝 Total Files**: 118+ Dart files
- **🏗️ Architecture**: Clean Architecture with 3 layers
- **📦 Dependencies**: 20+ carefully selected packages
- **🧪 CI/CD Workflows**: 4 automated pipelines
- **🔒 Security Scans**: Weekly automated security checks
- **📈 Code Coverage**: Target 80%+ coverage

---

## 🚀 Getting Started Quickly

```bash
# Clone and setup in one go
git clone https://github.com/royalcourtbd/metro_mate.git
cd metro_mate
flutter pub get
dart run build_runner build --delete-conflicting-outputs
flutter run
```

## 📞 Support & Community

- 🐛 **Bug Reports**: [GitHub Issues](https://github.com/royalcourtbd/metro_mate/issues)
- 💡 **Feature Requests**: [GitHub Discussions](https://github.com/royalcourtbd/metro_mate/discussions)
- 📚 **Documentation**: [Wiki](https://github.com/royalcourtbd/metro_mate/wiki)
- 🔔 **Updates**: [Watch this repo](https://github.com/royalcourtbd/metro_mate) for notifications

---

> **🎯 Mission**: Simplifying metro travel in Bangladesh through technology. Built with ❤️ for the Bangladeshi commuter community.

**⭐ Don't forget to star this repository if you find it helpful!**
