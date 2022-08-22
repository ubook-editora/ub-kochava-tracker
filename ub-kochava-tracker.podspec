#
# Be sure to run `pod lib lint ub-kochava-tracker.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'ub-kochava-tracker'
    s.version          = '5.1.1'
    s.summary          = 'The KochavaTracker module of the KochavaTracker SDK for Apple iOS, macOS, macCatalyst, tvOS, and watchOS.'

    s.description  = <<-DESC
    The KochavaTracker module is an optional module within the Kochava SDK providing install attribution and analytics.  This includes support or compatibility for iOS, macOS, macCatalyst, tvOS, and watchOS.
    DESC

    s.homepage         = 'http://www.kochava.com'
    s.license          = { :type => 'Commercial', :file => 'LICENSE' }
    s.author           = { 'Kochava' => 'support@kochava.com' }
    s.source           = { :git => 'https://github.com/ubook-editora/ub-kochava-tracker.git', :tag => s.version.to_s }

    s.ios.deployment_target = '10.3'
    s.osx.deployment_target = '10.14'
    s.tvos.deployment_target = '10.2'
    s.watchos.deployment_target = '3.2'

    s.source_files = 'Apple-Cocoapod-KochavaTracker/Frameworks/KochavaTracker.xcframework/ios-arm64_armv7/KochavaTracker.framework/Headers/**/*.h'
    s.ios.frameworks   = 'Foundation', 'UIKit', 'AVFoundation', 'AdSupport', 'CoreGraphics', 'CoreTelephony', 'iAd', 'SystemConfiguration', 'WebKit'
    s.osx.frameworks   = 'Foundation', 'AppKit', 'AVFoundation', 'AdSupport', 'CoreGraphics', 'CoreTelephony', 'SystemConfiguration', 'WebKit'
    s.tvos.frameworks   = 'Foundation', 'UIKit', 'AVFoundation', 'AdSupport', 'CoreGraphics', 'SystemConfiguration'
    s.watchos.frameworks   = 'Foundation', 'UIKit', 'AVFoundation', 'CoreGraphics'
    s.dependency 'Apple-Cocoapod-KochavaCore', '~> 5.1.1'

    s.vendored_frameworks = 'Apple-Cocoapod-KochavaTracker/Frameworks/KochavaTracker.xcframework'
    s.preserve_paths = 'Apple-Cocoapod-KochavaTracker/Frameworks/KochavaTracker.xcframework'

    s.swift_versions = '5.0'
end
