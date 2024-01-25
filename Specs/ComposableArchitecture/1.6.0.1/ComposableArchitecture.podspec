Pod::Spec.new do |spec|
  spec.name         = "ComposableArchitecture"
  spec.version      = "1.6.0.1"
  spec.summary      = "The Composable Architecture (TCA, for short) is a library for building applications in a consistent and understandable way, with composition, testing, and ergonomics in mind. It can be used in SwiftUI, UIKit, and more, and on any Apple platform (iOS, macOS, tvOS, and watchOS)."
  spec.homepage     = "https://www.pointfree.co/collections/composable-architecture"
  spec.author       = { "Zsolt Kovacs" => "blog@ismoth.com" }
  spec.license      = { type: 'MIT', file: 'LICENSE' }
  spec.swift_versions = "5.9"

  spec.ios.deployment_target = "13.0"
  spec.osx.deployment_target = "10.15"
  spec.tvos.deployment_target = "13.0"
  # WatchOS is currently waiting on this issue:
  # https://github.com/CocoaPods/CocoaPods/pull/11660
  # spec.watchos.deployment_target = "6.0"

  spec.source       = { :git => "https://github.com/veraposeidon/swift-composable-architecture.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/ComposableArchitecture/**/*.swift"
  # except Documentation.docc
  spec.exclude_files = "Sources/ComposableArchitecture/Documentation.docc/**/*"
  spec.preserve_path = ["Sources/macros/ComposableArchitectureMacros"]
  # spec.pod_target_xcconfig = {
  #   'OTHER_SWIFT_FLAGS' => '-load-plugin-executable macros/ComposableArchitectureMacros#ComposableArchitectureMacros'
  # }
  # spec.user_target_xcconfig = {
  #   'OTHER_SWIFT_FLAGS' => '-load-plugin-executable macros/ComposableArchitectureMacros#ComposableArchitectureMacros'
  # }

  spec.dependency "CasePaths", "1.2.1"
  spec.dependency "CombineSchedulers", "1.0.0"
  spec.dependency "ConcurrencyExtras", "1.1.0"
  spec.dependency "CustomDump", "1.1.2"
  spec.dependency "Dependencies", "1.2.0"
  spec.dependency "DependenciesMacros", "1.2.1"
  spec.dependency "IdentifiedCollections", "1.0.0"
  spec.dependency "OrderedCollections", "1.0.6"
  spec.dependency "SwiftUINavigationCore", "1.2.0"
  spec.dependency "XCTestDynamicOverlay", "1.0.3"
  spec.dependency "Clocks", "1.0.2"
end
