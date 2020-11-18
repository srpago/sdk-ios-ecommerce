#
# Be sure to run `pod lib lint SrPago-Ecommerce.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SrPago-Ecommerce'
  s.version          = '0.1.0'
  s.summary          = 'A short description of SrPago-Ecommerce.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC
  s.name             = "SrPago-Ecommerce"
  s.version          = "1.0.0"
  s.summary          = "A SrPago SDK to ecommerce"
  s.homepage         = 'https://github.com/LFBR-SrPago/SrPago-ecommerce'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.homepage         = 'https://senorpago.com'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'rhernandez@srpago.com' => 'fbustosr@srpago.com' }
  s.source           = { :git => 'https://github.com/LFBR-SrPago/SrPago-ecommerce.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'SrPago-Ecommerce/Classes/**/*'
  s.swift_versions = '4.2'
  #s.frameworks = 'SrPago'
  
  # s.resource_bundles = {
  #   'SrPago-Ecommerce' => ['SrPago-Ecommerce/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
