#
#  Be sure to run `pod spec lint TKUIKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
    s.name         = "TKUIKit"
    s.version      = "1.0.1"
    s.summary      = "A short description of MyFramework."
    s.description  = <<-DESC
    A much much longer description of TKUIKit.
    DESC
    s.homepage     = "http://tiki.vn"
    s.license      = "Copyleft"
    s.author       = { "Truong Nguyen" => "truong.nguyen2@tiki.vn" }
    s.source       = { :path => '.' }
    # s.source       = { :git => "https://github/samwize/MyFramework", :tag => "#{s.version}" }
    s.source_files  = "TKUIKit/Extension/*.swift"
end
