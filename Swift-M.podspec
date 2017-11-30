#
# Be sure to run `pod lib lint Swift-M.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Swift-M'
  s.version          = '1.0.3'
  s.summary          = 'some useful extension of swift '

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!


  s.homepage         = 'https://github.com/shuigenObba/Swift-M'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'huangshuigen' => 'huangshuigenoppa@163.com' }
  s.source           = { :git => 'https://github.com/shuigenObba/Swift-M.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

# platform specifics
  s.ios.deployment_target = '9.0'

# project setting

  s.requires_arc = true

  s.subspec 'Extension' do |ss|
    ss.source_files = 'Swift-M/Classes/Extension/**/*.swift'
    ss.frameworks = 'Foundation', 'UIKit'
  end

  s.subspec 'UIKit' do |ss|
    ss.source_files = 'Swift-M/Classes/UIKit/**/*.swift'
    ss.frameworks = 'UIKit'
    ss.dependency 'Swift-M/Extension'
    end
  # s.resource_bundles = {
  #   'Swift-M' => ['Swift-M/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
