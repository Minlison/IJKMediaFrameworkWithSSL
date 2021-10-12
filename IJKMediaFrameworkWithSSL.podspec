#
#  Be sure to run `pod spec lint IJKMediaFrameworkWithSSL.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "IJKMediaFrameworkWithSSL"
  spec.version      = "0.0.4"
  spec.summary      = "IJKMediaFrameworkWithSSL"
  spec.description  = <<-DESC
                        IJKMediaFrameworkWithSSL
                   DESC

  spec.homepage     = "https://github.com/Minlison/IJKMediaFrameworkWithSSL"
  spec.license      = "MIT"
  spec.author             = { "yuanhang" => "yuanhang.1991@icloud.com" }
  spec.source       = { :git => "https://github.com/Minlison/IJKMediaFrameworkWithSSL.git", :tag => "#{spec.version}" }
  spec.vendored_frameworks = 'IJKMediaFrameworkWithSSL.xcframework'
  spec.frameworks  = "AudioToolbox", "AVFoundation", "CoreGraphics", "CoreMedia", "CoreVideo", "MobileCoreServices", "OpenGLES", "QuartzCore", "VideoToolbox", "Foundation", "UIKit", "MediaPlayer"
  spec.libraries   = "bz2", "z", "c++"
  spec.user_target_xcconfig  =  {'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'}
  spec.pod_target_xcconfig = {'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'}
end
