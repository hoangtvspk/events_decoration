#!/bin/bash
set -e

echo "🚀 Starting Vercel build for Flutter web..."

# Add Flutter to PATH (should already be set from install command)
export PATH="$PATH:$(pwd)/flutter/bin"

# Build web using Makefile
ENVIRONMENT=${ENVIRONMENT:-dev}
echo "🏗️  Building Flutter web for environment: $ENVIRONMENT..."
make build-web ENVIRONMENT=$ENVIRONMENT

echo "✅ Build completed! Output: build/web"

