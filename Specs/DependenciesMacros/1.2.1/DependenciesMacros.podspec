Pod::Spec.new do |spec|
  spec.name         = "DependenciesMacros"
  spec.version      = "1.2.1"
  spec.summary      = "A collection of tools for debugging, diffing, and testing your application's data structures."
  spec.homepage     = "https://github.com/pointfreeco/swift-dependencies"
  spec.author       = { "Zsolt Kovacs" => "blog@ismoth.com" }
  spec.license      = { type: 'MIT', file: 'LICENSE' }
  spec.swift_versions = "5.9"

  spec.ios.deployment_target = "13.0"
  spec.osx.deployment_target = "10.15"
  spec.tvos.deployment_target = "13.0"

  spec.source       = { :git => "https://github.com/veraposeidon/swift-dependencies.git", :tag => "#{spec.version}" }
  spec.source_files = "Sources/DependenciesMacros/**/*.swift"
  spec.preserve_path = ["Sources/DependenciesMacros/macros/DependenciesMacrosPlugin"]
  spec.pod_target_xcconfig = {
    'OTHER_SWIFT_FLAGS' => '-load-plugin-executable ${PODS_ROOT}/DependenciesMacros/DependenciesMacros/macros/DependenciesMacrosPlugin#DependenciesMacrosPlugin'
  }
  spec.user_target_xcconfig = {
    'OTHER_SWIFT_FLAGS' => '-load-plugin-executable ${PODS_ROOT}/DependenciesMacros/DependenciesMacros/macros/DependenciesMacrosPlugin#DependenciesMacrosPlugin'
  }

  spec.dependency "XCTestDynamicOverlay"
end
