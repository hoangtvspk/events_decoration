#!/bin/bash
set -e

echo "📦 Installing dependencies for Vercel build..."

# Setup Flutter SDK
# Note: Vercel doesn't cache the flutter/ directory between builds,
# so we'll clone it fresh each time. Using shallow clone for speed.
if [ -d flutter ] && [ -f flutter/bin/flutter ]; then
  echo "📦 Flutter SDK exists (from cache), verifying..."
  export PATH="$PATH:$(pwd)/flutter/bin"
  if flutter --version > /dev/null 2>&1; then
    echo "✅ Flutter SDK is valid, skipping clone..."
  else
    echo "⚠️  Flutter SDK invalid, re-cloning..."
    rm -rf flutter
  fi
fi

if [ ! -d flutter ]; then
  echo "📦 Cloning Flutter SDK (shallow clone for speed)..."
  # Use shallow clone (--depth 1) to reduce download size from ~500MB to ~50MB
  # This significantly speeds up the clone process
  git clone --depth 1 --branch stable https://github.com/flutter/flutter.git
fi

# Add Flutter to PATH
export PATH="$PATH:$(pwd)/flutter/bin"

# Verify Flutter is working
if ! flutter --version > /dev/null 2>&1; then
  echo "❌ Flutter verification failed!"
  exit 1
fi

echo "✅ Flutter SDK ready: $(flutter --version | head -n 1)"

# Create environment file (needed before pub get)
echo "📝 Creating environment file..."
chmod +x scripts/create-env.sh
./scripts/create-env.sh

# Install Flutter dependencies (Vercel will cache .dart_tool and .pub-cache)
echo "📥 Installing Flutter dependencies..."
flutter pub get

echo "✅ Installation completed!"

