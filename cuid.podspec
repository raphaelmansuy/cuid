#
# Be sure to run `pod lib lint cuid.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'cuid'
  s.version          = '1.0.2'
  s.summary          = 'Collision-resistant ids optimized for horizontal scaling and binary search lookup performance. Based on ericelliott work for Javascript'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  
  Collision-resistant ids optimized for horizontal scaling and binary search lookup performance.
  
  Currently available for Node, browsers, Ruby, .Net, Go, PHP and Elixir. This is the swift version
  
  Cuid().gencuid() returns a short random string with some collision-busting measures. Safe to use as HTML element ID's, and unique server-side record lookups.
                       DESC

  s.homepage         = 'https://github.com/raphaelmansuy/cuid'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'raphaelmansuy' => 'raphael.mansuy@gmail.com' }
  s.source           = { :git => 'https://github.com/raphaelmansuy/cuid.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'
  s.swift_version = '3.2'
  

  s.source_files = 'cuid/**/*'
  
  # s.resource_bundles = {
  #   'cuid' => ['cuid/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
