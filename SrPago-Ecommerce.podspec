#
# Be sure to run `pod lib lint SrPago-Ecommerce.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SrPago-Ecommerce'
  s.version          = '1.0.3'
  s.summary          = 'Framework to get a SrPago token from any card.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  This framework allows to easily integrate the use of the SrPago sdk to obtain and store in a simple and secure way the use of cards and transactions
                       DESC
  s.homepage         = 'https://github.com/LFBR-SrPago/SrPago-ecommerce'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.homepage         = 'https://senorpago.com'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Fernando Bustos' => 'fbustosr@srpago.com' }
  s.source           = { :git => 'https://github.com/LFBR-SrPago/SrPago-ecommerce.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  #s.source_files = 'SrPago-Ecommerce/Classes/**/*'
  s.swift_versions = '4.2'
  s.vendored_frameworks = 'SrPago-Ecommerce/Framework/SrPago.framework'
  s.frameworks = 'SrPago'
  
  # s.resource_bundles = {
  #   'SrPago-Ecommerce' => ['SrPago-Ecommerce/Assets/*.png']
  # }
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
