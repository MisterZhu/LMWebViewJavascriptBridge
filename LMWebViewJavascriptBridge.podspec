#
#  Be sure to run `pod spec lint IOS_BaseFramework.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "LMWebViewJavascriptBridge"
  s.version      = "1.0.0"
  s.summary      = "A short description of LMWebViewJavascriptBridge."
  s.ios.deployment_target = "8.0"
  #s.resources = 'LMWebViewJavascriptBridge/Resources/*.*'
  s.requires_arc = true

  s.homepage         = "http://172.16.50.30:9091/ios_module/LMWebViewJavascriptBridge"
  s.license           = 'MIT'
  s.author           = { "McDuff" => "lijiong.zhang@uama.com.cn" }
  s.source           = { :git => "http://172.16.50.30:9091/ios_module/LMWebViewJavascriptBridge.git", :tag => s.version.to_s }

#s.ios.framework = 'CFNetwork','CoreBluetooth','MobileCoreServices','SystemConfiguration'
#s.ios.library = 'z','sqlite3'
#s.vendored_libraries = 'LMWebViewJavascriptBridge/Resources/libDsmLock.a'
#s.resources = 'LMWebViewJavascriptBridge/Resources/*.bundle'

  s.subspec 'Controller' do |ss|
   ss.source_files = 'LMWebViewJavascriptBridge/Classes/Controller/*.{h,m}'
   ss.resources = 'LMWebViewJavascriptBridge/Classes/Controller/*.xib'
  end

  s.subspec 'Model' do |ss|
   ss.source_files = 'LMWebViewJavascriptBridge/Classes/Model/*.{h,m}'
  end

  s.subspec 'View' do |ss|
   ss.source_files = 'LMWebViewJavascriptBridge/Classes/View/*.{h,m}'
   #ss.resources = 'LMWebViewJavascriptBridge/Classes/View/*.xib'
  end
  s.ios.source_files = 'LMWebViewJavascriptBridge/Classes/*.{h,m}'
  s.ios.frameworks   = 'WebKit'
end
