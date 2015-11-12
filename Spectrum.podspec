Pod::Spec.new do |s|
  s.name = 'Spectrum'
  s.version = '0.8'
  s.license = 'MIT'
  s.summary = 'POSIX Regular Expressions for Swift 2 (Linux ready)'
  s.homepage = 'https://github.com/Zewo/Spectrum'
  s.authors = { 'Paulo Faria' => 'paulo.faria.rl@gmail.com' }
  s.source = { :git => 'https://github.com/Zewo/Spectrum.git', :tag => 'v0.1' }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'

  s.source_files = 'Dependencies/Gamut/*.c', 'Spectrum/**/*.swift'

  s.xcconfig =  {
    'SWIFT_INCLUDE_PATHS' => '$(SRCROOT)/Spectrum/Dependencies'
  }

  s.preserve_paths = 'Dependencies/*'

  s.requires_arc = true
end