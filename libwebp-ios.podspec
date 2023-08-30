#
#  Be sure to run `pod spec lint libwebp.swift.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "libwebp-ios"
  spec.version      = "1.0.9"
  spec.summary      = "Prebuilt binaries for libwebp"
  spec.description  = "Simple provider for libwebp for iOS with prebuild binaries"
  spec.homepage     = 'https://github.com/awxkee/libwebp-ios'
  spec.license      = { :type => "CC0-1.0", :file => "LICENSE" }
  spec.author       = { 'Radzivon Bartoshyk' => 'radzivon.bartoshyk@proton.me' }
  spec.source       = { :git => "https://github.com/awxkee/libwebp-ios.git", :tag => "#{spec.version}" }
  spec.ios.deployment_target = '13.0'
  spec.osx.deployment_target = '11.0'
  spec.watchos.deployment_target = '6.0'
  spec.tvos.deployment_target = '11.0'
  spec.source_files  = "Sources/libsharpyuv.xcframework/ios-arm64/Headers/*.h", "Sources/libwebp.xcframework/ios-arm64/Headers/*.h"
  spec.public_header_files = "Sources/libsharpyuv.xcframework/ios-arm64/Headers/*.h", "Sources/libwebp.xcframework/ios-arm64/Headers/*.h"
  spec.vendored_frameworks = 'Sources/libsharpyuv.xcframework', 'Sources/libwebp.xcframework', 'Sources/libwebpdemux.xcframework', 'Sources/libwebpmux.xcframework'
  spec.preserve_paths = 'Sources/libsharpyuv.xcframework', 'Sources/libwebp.xcframework', 'Sources/libwebpdemux.xcframework', 'Sources/libwebpmux.xcframework'
  spec.pod_target_xcconfig = {
      'OTHER_CXXFLAGS' => '$(inherited) -std=c++20',
      'HEADER_SEARCH_PATHS' => '$(inherited) "$(PODS_TARGET_SRCROOT)/Sources/libsharpyuv.xcframework/ios-arm64/Headers/*.h" "$(PODS_TARGET_SRCROOT)/Sources/libwebp.xcframework/ios-arm64/Headers/*.h"',
       'EXCLUDED_ARCHS[sdk=watchsimulator*]' => 'i386'
  }
  spec.libraries = 'c++'
  spec.requires_arc = true
end
