
Pod::Spec.new do |s|
  s.name             = 'WLVideo'
  s.version          = '1.0.0'
  s.summary          = 'A short description of WLVideo.'

  s.homepage         = 'https://github.com/Weang/WLVideo'

  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Weang' => 'w704444178@qq.com' }
  s.source           = { :git => 'https://github.com/Weang/WLVideo', :tag => s.version.to_s }


  s.ios.deployment_target = '10.0'

  s.source_files = 'WLVideo/Classes/**/*'
  s.resources = 'WLVideo/Assets/*'
  s.swift_version = "5.0"
  s.frameworks = 'AssetsLibrary', 'AVFoundation', 'Photos'
  
end
