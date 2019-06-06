Pod::Spec.new do |s|
  s.name         = "SignalRSwift"
  s.version      = "2.0.3"
  s.summary      = "A SignalR client library for iOS written in Swift"
  s.description  = "This is a signalR client written purely in swift using Alamofire, SwiftWebSockets and ObjectMapper"
  s.homepage     = "https://github.com/AutosoftDMS/SignalR-Swift"
  s.license      = "MIT"
  s.author       = { "Jordan Camara" => "jcamara@autosoftdms.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/rt-syscom/SignalR-Swift.git", :commit => "5d6646ee6daa44cbfd86d17925beaf7911876538" }

  s.source_files  = "SignalR-Swift/**/*.swift"
  s.exclude_files = "Classes/Exclude"

  s.dependency "Alamofire", "~> 4.2"
  s.dependency "Starscream", "~> 3.0"

end
