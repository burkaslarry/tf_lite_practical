#!/bin/bash

# Navigate to the project directory
cd ~/tf_lite_practical

# Check if a package name is provided as an argument
if [ -z "$1" ]; then
    echo "Please provide a package name as an argument."
    exit 1
fi

# Clean and install dependencies
flutter pub add "$1"

# Install iOS pods
cd ios && pod install

# Open the Xcode workspace
open FEHDInspection.xcworkspace