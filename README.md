# Bloc with clean architector

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

### Create Environment Files

The project requires environment files for different environments. Run the setup script:

```bash
# Make the script executable
chmod +x scripts/create-env.sh

# Create environment files (default: dev)
./scripts/create-env.sh

# Or specify environment
ENVIRONMENT=dev ./scripts/create-env.sh
ENVIRONMENT=staging ./scripts/create-env.sh
ENVIRONMENT=prod ./scripts/create-env.sh
```

This will create `.env.dev`, `.env.staging`, and `.env.prod` files in `lib/core/config/` directory.

Remove git locally:

- rm -rf .git

Change package name:

- dart run change_app_package_name:main com.new.package.name

Flutter run generate:

```bash
make build-runner
```

Or manually:

- `flutter pub run build_runner build --delete-conflicting-outputs`
- `dart run build_runner build --delete-conflicting-outputs`

Change app's icon:

- dart run flutter_launcher_icons

Change native splash:

- flutter pub run flutter_native_splash:create

## Environment Commands

This project uses Makefile for convenient command execution. All commands support three environments: `dev`, `staging`, and `prod`.

### Running the App

Run the app in different environments:

```bash
# Development
make run-dev

# Staging
make run-staging

# Production
make run-prod
```

### Building Android APK

Build APK for different environments:

```bash
# Development APK
make build-android-dev

# Staging APK
make build-android-staging

# Production APK
make build-android-prod
```

### Building Android App Bundle (AAB)

Build App Bundle for Google Play Store:

```bash
# Development AAB
make build-appbundle-dev

# Staging AAB
make build-appbundle-staging

# Production AAB
make build-appbundle-prod
```

### Building iOS

Build iOS Xcode project for different environments:

```bash
# Development iOS
make build-ios-dev

# Staging iOS
make build-ios-staging

# Production iOS
make build-ios-prod
```

### Building iOS IPA

Build IPA for App Store / TestFlight:

```bash
# Development IPA
make build-ipa-dev

# Staging IPA
make build-ipa-staging

# Production IPA
make build-ipa-prod
```

### Building Web

Build web application for different environments:

```bash
# Development Web
make build-web-dev

# Staging Web
make build-web-staging

# Production Web
make build-web-prod
```

#### Running Web Locally

Run web application in Chrome for development:

```bash
# Development
make run-web-dev

# Staging
make run-web-staging

# Production
make run-web-prod
```

#### Web Features

- **Custom Splash Screen**: Beautiful gradient splash screen with animated loading dots
- **Error Handling**: Comprehensive error handling for network issues and loading failures
- **PWA Support**: Progressive Web App with manifest.json configuration
- **Responsive Design**: Optimized for desktop and mobile browsers
- **SEO Optimized**: Meta tags and proper HTML structure

#### Web File Structure

```
web/
├── index.html          # Main HTML file with splash screen
├── splash.css          # Splash screen styles
├── splash.js           # Splash screen logic and Flutter loader detection
├── manifest.json       # PWA manifest configuration
└── icons/              # App icons for PWA
```

#### Deploying to Vercel

The project includes Vercel configuration for easy deployment:

1. **Build Script**: `scripts/vercel-build.sh` - Builds Flutter web app
2. **Install Script**: `scripts/vercel-install.sh` - Installs Flutter SDK
3. **Vercel Config**: `vercel.json` - Routing configuration

To deploy:

```bash
# Build Command
chmod +x scripts/vercel-build.sh && ./scripts/vercel-build.sh

# Output Directory
build/web

# Install Command
chmod +x scripts/vercel-install.sh && ./scripts/vercel-install.sh
```

#### Web Customization

**Splash Screen**: Customize the splash screen by editing:

- `web/splash.css` - Styles and animations
- `web/splash.js` - Loading logic and error handling
- `web/index.html` - HTML structure

**PWA Settings**: Update `web/manifest.json` for:

- App name and description
- Theme colors
- Icons and display mode

## Additional Commands

### Code Quality

```bash
# Analyze code
make analyze

# Format code
make format

# Run tests
make test
```

### Clean Build

```bash
# Clean build artifacts
make clean
```

### Release Mode

```bash
# Run app in release mode (production)
make run-release
```

## Notes

- Make sure you have the appropriate environment files (`.env.dev`, `.env.staging`, `.env.prod`) set up in the `lib/core/config` directory before running these commands.
- All build outputs are located in the `build/` directory:
  - Android: `build/app/outputs/flutter-apk/` (APK) or `build/app/outputs/bundle/` (AAB)
  - iOS: `build/ios/` (Xcode project) or `build/ios/ipa/` (IPA)
  - Web: `build/web/`
