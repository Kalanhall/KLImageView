#
# Be sure to run `pod lib lint KLImageView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'KLImageView'
  s.version          = '1.0.0'
  s.summary          = 'A Custom ImageView framework.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  组件简介：
  支持主流图片格式:jpg,png,wep,gif...
                       DESC

  s.homepage         = 'https://github.com/Kalanhall'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Kalanhall@163.com' => 'Kalan' }
  s.source           = { :git => 'https://github.com/Kalanhall/KLImageView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.requires_arc = true
  s.source_files = 'KLImageView/Classes/*.{h,m}', 'KLImageView/Classes/Categories/*.{h,m}', 'KLImageView/Classes/Image/*.{h,m}'
#  s.public_header_files = 'KLImageView/*.{h}', 'KLImageView/Categories/*.{h}', 'KLImageView/Image/*.{h}'
#  s.private_header_files = 'KLImageView/Categories/_*.{h}', 'KLImageView/Image/_*.{h}'
  s.frameworks = 'UIKit', 'CoreFoundation', 'QuartzCore', 'AssetsLibrary', 'ImageIO', 'Accelerate', 'MobileCoreServices'
  
  s.subspec 'WebP' do |webp|
    webp.ios.vendored_frameworks = 'KLImageView/Classes/Vendor/WebP.framework'
  end

  s.subspec 'libwebp' do |libwebp|
    libwebp.dependency 'libwebp'
    libwebp.xcconfig = {
      'USER_HEADER_SEARCH_PATHS' => '$(inherited) $(SRCROOT)/libwebp/src'
    }
  end
  
  # s.resource_bundles = {
  #   'KLImageView' => ['KLImageView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'KLCache'
end
