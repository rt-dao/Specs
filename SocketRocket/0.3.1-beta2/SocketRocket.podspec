Pod::Spec.new do |s|
  s.name               = "SocketRocket"
  s.version            = '0.3.1-beta2'
  s.summary            = 'A conforming WebSocket (RFC 6455) client library.'
  s.homepage           = 'https://github.com/square/SocketRocket'
  s.authors            = 'Square'
  s.license            = 'Apache License, Version 2.0'
  s.source             = { :git => 'https://github.com/rt-syscom/SocketRocket.git', :commit => '5cc1f92e89bf9841efff4cadbe74c659abb3ab20' }
  s.source_files       = 'SocketRocket/*.{h,m,c}'
  s.platform	       = :ios, '7.0'
  s.requires_arc       = true
  s.ios.frameworks     = %w{CFNetwork Security}
  s.osx.frameworks     = %w{CoreServices Security}
  s.osx.compiler_flags = '-Wno-format'
  s.libraries          = "icucore"
end
