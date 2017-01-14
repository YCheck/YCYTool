#
# Be sure to run `pod lib lint YCYTool.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YCYTool'
  s.version          = '0.0.8'
  s.summary          = 'YCYTool is tool.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/YCheck/YCYTool'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'chengyou.yang' => '864390553@qq.com' }
  s.source           = { :git => 'https://github.com/YCheck/YCYTool.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'YCYTool/YCYTool.h'
  s.subspec 'YCYFundation' do |ss|
  ss.source_files ='YCYTool/YCYFoundation/**/YCYNSData.h','YCYTool/YCYFoundation/**/YCYNSString.h','YCYTool/YCYFoundation/**/YCYNSObject.h', 'YCYTool/YCYFoundation/YCYFoundation.h'
    ss.subspec 'YCYNSObject' do |sss|
      sss.source_files = 'YCYTool/YCYFoundation/**/NSObject+{YCYAppInfo,YCYEasyCopy,YCYReflection}.{h,m}','YCYTool/YCYFoundation/**/YCYNSObject.h'
#      sss.public_header_files = 'YCYTool/YCYFoundation/YCYNSObject/YCYNSObject.h'
    end
    ss.subspec 'YCYNSString' do |sss|
      sss.source_files ='YCYTool/YCYFoundation/**/NSData+YCYBase64.h' ,'YCYTool/YCYFoundation/**/NSString+{YCYBase64}.{h,m}'
    end
    ss.subspec 'YCYNSData' do |sss|
      sss.source_files = 'YCYTool/YCYFoundation/**/NSData+{YCYBase64}.{h,m}'
    end    
  end
  
  # s.resource_bundles = {
  #   'YCYTool' => ['YCYToolAssets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'Foundation'
  # s.dependency 'AFNetworking', '~> 2.3'
end
