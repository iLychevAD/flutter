#!/usr/bin/env bash
# from https://www.rocksolidknowledge.com/articles/using-appcenter-for-flutter-projects
#Place this script in project/ios/

# fail if any command fails
set -e

# debug log
set -x
cd ..

git clone -b dev https://github.com/flutter/flutter.git

export PATH=`pwd`/flutter/bin:$PATH

flutter doctor

echo "Installed flutter to `pwd`/flutter"

flutter build ios --release --no-codesign
