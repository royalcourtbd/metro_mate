#!/bin/bash

# Metro Mate Development Script
# This script provides common development tasks

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}🚇 Metro Mate Development Helper${NC}"
echo "================================"

# Function to check if Flutter is installed
check_flutter() {
    if ! command -v flutter &> /dev/null; then
        echo -e "${RED}Flutter is not installed or not in PATH${NC}"
        exit 1
    fi
}

# Function to check if Dart is installed
check_dart() {
    if ! command -v dart &> /dev/null; then
        echo -e "${RED}Dart is not installed or not in PATH${NC}"
        exit 1
    fi
}

# Function to setup project
setup_project() {
    echo -e "${YELLOW}Setting up project...${NC}"
    check_flutter
    check_dart
    
    echo "📦 Getting dependencies..."
    flutter pub get
    
    echo "🔨 Running build runner..."
    dart run build_runner build --delete-conflicting-outputs
    
    echo "🔍 Analyzing code..."
    flutter analyze
    
    echo -e "${GREEN}✅ Project setup complete!${NC}"
}

# Function to clean project
clean_project() {
    echo -e "${YELLOW}Cleaning project...${NC}"
    flutter clean
    flutter pub get
    dart run build_runner build --delete-conflicting-outputs
    echo -e "${GREEN}✅ Project cleaned!${NC}"
}

# Function to run tests
run_tests() {
    echo -e "${YELLOW}Running tests...${NC}"
    flutter test
    echo -e "${GREEN}✅ Tests completed!${NC}"
}

# Function to build APK
build_apk() {
    echo -e "${YELLOW}Building release APK...${NC}"
    flutter build apk --release
    
    # Show APK size
    if [ -f "build/app/outputs/flutter-apk/app-release.apk" ]; then
        APK_SIZE=$(ls -lh build/app/outputs/flutter-apk/app-release.apk | awk '{print $5}')
        echo -e "${GREEN}✅ APK built successfully! Size: $APK_SIZE${NC}"
        echo -e "${BLUE}📱 APK location: build/app/outputs/flutter-apk/app-release.apk${NC}"
    fi
}

# Function to build AAB
build_aab() {
    echo -e "${YELLOW}Building release AAB...${NC}"
    flutter build appbundle --release
    
    if [ -f "build/app/outputs/bundle/release/app-release.aab" ]; then
        AAB_SIZE=$(ls -lh build/app/outputs/bundle/release/app-release.aab | awk '{print $5}')
        echo -e "${GREEN}✅ AAB built successfully! Size: $AAB_SIZE${NC}"
        echo -e "${BLUE}📱 AAB location: build/app/outputs/bundle/release/app-release.aab${NC}"
    fi
}

# Function to format code
format_code() {
    echo -e "${YELLOW}Formatting code...${NC}"
    dart format .
    echo -e "${GREEN}✅ Code formatted!${NC}"
}

# Function to create release
create_release() {
    echo -e "${YELLOW}Creating release...${NC}"
    
    # Get current version from pubspec.yaml
    VERSION=$(grep '^version:' pubspec.yaml | cut -d ' ' -f 2 | cut -d '+' -f 1)
    TAG="v$VERSION"
    
    echo "Current version: $VERSION"
    echo "Tag will be: $TAG"
    
    read -p "Do you want to create release $TAG? (y/N): " -n 1 -r
    echo
    
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        # Check if tag already exists
        if git rev-parse "$TAG" >/dev/null 2>&1; then
            echo -e "${RED}Tag $TAG already exists!${NC}"
            exit 1
        fi
        
        echo "Creating and pushing tag..."
        git tag "$TAG"
        git push origin "$TAG"
        
        echo -e "${GREEN}✅ Release $TAG created and pushed!${NC}"
        echo -e "${BLUE}🚀 GitHub Actions will now build and create the release automatically${NC}"
    else
        echo "Release creation cancelled."
    fi
}

# Function to show help
show_help() {
    echo "Usage: $0 [COMMAND]"
    echo ""
    echo "Commands:"
    echo "  setup     - Setup project (install deps, build runner, analyze)"
    echo "  clean     - Clean and rebuild project"
    echo "  test      - Run tests"
    echo "  apk       - Build release APK"
    echo "  aab       - Build release AAB"
    echo "  format    - Format code"
    echo "  release   - Create and push release tag"
    echo "  help      - Show this help message"
    echo ""
    echo "Examples:"
    echo "  $0 setup"
    echo "  $0 apk"
    echo "  $0 release"
}

# Main script logic
case "${1:-help}" in
    setup)
        setup_project
        ;;
    clean)
        clean_project
        ;;
    test)
        run_tests
        ;;
    apk)
        build_apk
        ;;
    aab)
        build_aab
        ;;
    format)
        format_code
        ;;
    release)
        create_release
        ;;
    help|--help|-h)
        show_help
        ;;
    *)
        echo -e "${RED}Unknown command: $1${NC}"
        echo ""
        show_help
        exit 1
        ;;
esac
