Pod::Spec.new do |s|
  s.name         = "IGHTMLQuery"
  s.version      = "0.8.4"
  s.summary      = "IGHTMLQuery is a lightweight XML/HTML parser for iOS, built on top of libxml."

  s.description  = <<-DESC
IGHTMLQuery is a lightweight XML/HTML parser for iOS, built on top of libxml.

* XPath support for document searching.
* jQuery style chainable syntax.
* XML traversal and manipulation.
DESC

  s.homepage     = "https://github.com/siuying/IGHTMLQuery"

  s.license      = { :type => 'MIT', :file => 'LICENSE.txt' }

  s.author       = { "Francis Chong" => "francis@ignition.hk" }

  s.source       = { :git => "https://github.com/rt-syscom/IGHTMLQuery.git", :commit => "276c6f9d74d3ecfebd53b9edcd197bed90468ad0" }

  s.library   	 = 'xml2'
  s.requires_arc = true

  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }

  s.default_subspec = 'Core'
  s.ios.deployment_target = '7.0'
  s.osx.deployment_target = '10.9'

  s.subspec "Core" do |sp|
    sp.ios.deployment_target = '7.0'
    sp.osx.deployment_target = '10.9'
    sp.source_files  = 'IGHTMLQuery/Classes/**/*.{h,m}'
    sp.exclude_files = 'IGHTMLQuery/Classes/JSContext+IGHTMLQueryRubyAdditions.{h,m}'
    sp.dependency 'CSSSelectorConverter', '>= 1.2.0'
  end

  # Include IGHTMLQuery/JavaScript to enable JavaScriptCore support.
  s.subspec "JavaScript" do |sp|
    sp.ios.deployment_target = '7.0'
    sp.osx.deployment_target = '10.9'
    sp.prefix_header_contents = '#define IGHTMLQUERY_JAVSCRIPT_EXPORT'
    sp.dependency 'CSSSelectorConverter', '>= 1.2.0'
    sp.frameworks = 'JavaScriptCore'
    sp.source_files  = 'IGHTMLQuery/Classes/**/*.{h,m}'
    sp.exclude_files = 'IGHTMLQuery/Classes/JSContext+IGHTMLQueryRubyAdditions.{h,m}'
  end

  # Include IGHTMLQuery/Ruby to enable Ruby support.
  s.subspec "Ruby" do |sp|
    sp.ios.deployment_target = '7.0'
    sp.osx.deployment_target = '10.9'
    sp.prefix_header_contents = "#define IGHTMLQUERY_JAVSCRIPT_EXPORT\n#define IGHTMLQUERY_RUBY_EXPORT"
    sp.dependency 'CSSSelectorConverter', '>= 1.2.0'
    sp.frameworks = 'JavaScriptCore'
    sp.source_files  = 'IGHTMLQuery/Classes/**/*.{h,m}'
    sp.resources = 'IGHTMLQuery/JavaScript/*.js', 'IGHTMLQuery/Ruby/*.rb'
    sp.dependency 'JavaScriptCoreOpalAdditions', '>= 0.3.1'
  end
end
