Pod::Spec.new do |spec|
  spec.name         = "XCTestDynamicOverlay"
  spec.version      = "1.0.3"
  spec.summary      = "Define XCTest assertion helpers directly in your application and library code."
  spec.homepage     = "https://github.com/pointfreeco/xctest-dynamic-overlay"
  spec.author       = { "Zsolt Kovacs" => "blog@ismoth.com" }
  spec.license      = { type: 'MIT', file: 'LICENSE' }
  spec.swift_versions = "5.6"

  spec.ios.deployment_target = "13.0"
  spec.osx.deployment_target = "10.15"
  spec.tvos.deployment_target = "13.0"

  # WatchOS is currently waiting on this issue:
  # https://github.com/CocoaPods/CocoaPods/pull/11660
  # spec.watchos.deployment_target = "6.0"

  spec.source       = { :git => "https://github.com/pointfreeco/xctest-dynamic-overlay.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/XCTestDynamicOverlay/**/*.swift"
end
