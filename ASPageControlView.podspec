#
# Be sure to run `pod lib lint ASPageControlView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ASPageControlView'
  s.version          = '0.1.0'
  s.summary          = 'A simple and easy to use page control view with a beautiful animation to mark the change in page.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Drag a view onto the storyboard and set it class to ASPageControlView. Provide a width and height constraint for the page control view. Customize the appearance fo the page control view by modifying its attributes listed in Attributes Inspector.

                       DESC

  s.homepage         = 'https://github.com/arijits95/ASPageControlView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'arijits95' => 'sohamray91@gmail.com' }
  s.source           = { :git => 'https://github.com/arijits95/ASPageControlView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.swift_version = '4.0'
  s.source_files = 'ASPageControlView/Classes/**/*'
  
  # s.resource_bundles = {
  #   'ASPageControlView' => ['ASPageControlView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
