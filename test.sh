#! /bin/bash

TEST_CMD="xcodebuild -scheme CalculatorTests -project Calculator/Calculator.xcodeproj -sdk iphonesimulator9.1 -destination 'platform=iOS Simulator,name=iPhone 6S,OS=9.1' test"

which -s xcpretty
XCPRETTY_INSTALLED=$?

if [[ $TRAVIS || $XCPRETTY_INSTALLED == 0 ]]; then
  eval "${TEST_CMD} | xcpretty"
else
  eval "$TEST_CMD"
fi