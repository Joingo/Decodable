Pod::Spec.new do |s|
  s.name             = "Decodable"
  s.version          = "0.7.0"
  s.summary          = "Swift JSON parsing done (more) right"
  s.description      = "Simple yet powerful object mapping made possible by Swift error handling, even on Swift 5"
  s.homepage         = "https://github.com/Intelity/Decodable"
  s.license          = 'MIT'
  s.author           = { "Intelity" => "guestapp@intelity.com" }
  s.source           = { :git => "https://github.com/Intelity/Decodable.git", :tag => "#{s.version}" }
  s.ios.deployment_target = '10.0'
  s.osx.deployment_target = '10.10'
  s.tvos.deployment_target = '10.0'
  s.watchos.deployment_target = '4.0'
  s.requires_arc = true
  s.source_files = 'Sources/*.{swift,h}'
  s.swift_version = '5.0'
end
