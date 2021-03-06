#!/bin/sh

if cmp -s Podfile.lock Pods/Podfile.lock; then
  echo "Using cached CocoaPods dependencies"
else
  bundle exec pod repo update
  bundle exec pod install
  cp -v Podfile.lock Pods
fi
