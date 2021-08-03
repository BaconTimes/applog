#
# Be sure to run `pod lib lint applog.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'applog'
  s.version          = '0.0.1'
  s.summary          = 'app log.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
app log
                       DESC

  s.homepage         = 'https://github.com/804258952@qq.com/applog'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'bacon' => 'ch3coohna@qq.com' }
  s.source           = { :git => 'https://github.com/BaconTimes/applog.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'applog/Classes/*.{h,m}'
  s.public_header_files = 'applog/Classes/*.h'

  # s.resource_bundles = {
  #   'applog' => ['applog/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
