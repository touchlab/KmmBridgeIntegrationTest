#!/bin/sh

./gradlew kmmBridgePublish --no-daemon --stacktrace -Dkotlin.incremental=false -Dorg.gradle.jvmargs="-Xmx3g -XX:MaxPermSize=2048m -XX:+HeapDumpOnOutOfMemoryError -Dfile.encoding=UTF-8 -XX:MaxMetaspaceSize=512m"

cd ios-spm
xcodebuild -configuration Debug -scheme KmmBridgeIntegrationTestSpm -sdk iphonesimulator

cd ../ios-cocoapods
pod install
xcodebuild -workspace KmmBridgeIntegrationTestCocoapods.xcworkspace -configuration Debug -scheme KmmBridgeIntegrationTestCocoapods -sdk iphonesimulator
