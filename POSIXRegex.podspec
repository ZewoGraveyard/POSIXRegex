Pod::Spec.new do |s|
  s.name = 'POSIXRegex'
  s.version = '0.1'
  s.license = 'MIT'
  s.summary = 'POSIX Regular Expressions for Swift 2 (Linux ready)'
  s.homepage = 'https://github.com/Zewo/POSIXRegex'
  s.authors = { 'Paulo Faria' => 'paulo.faria.rl@gmail.com' }
  s.source = { :git => 'https://github.com/Zewo/POSIXRegex.git', :tag => s.version }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'

  s.source_files = 'Dependencies/Gamut/*.c', 'POSIXRegex/**/*.swift'

  s.xcconfig =  {
    'SWIFT_INCLUDE_PATHS' => '$(SRCROOT)/POSIXRegex/Dependencies'
  }

  s.preserve_paths = 'Dependencies/*'

  s.requires_arc = true
end