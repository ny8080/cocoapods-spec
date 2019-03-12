#
# Be sure to run `pod lib lint TDFCalendarViewController.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TDFCalendarViewController'
  s.version          = '0.2.1'
  s.summary          = '供应链的日历选择器'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  供应链的日历选择器..
  DESC

  s.homepage         = 'hongsang@2dfire.com'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'hongsang' => 'hongsang@2dfire.com' }
  s.source           = { :git => 'git@git.2dfire.net:supply_business_lib_ios/TDFCalendarViewController.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'TDFCalendarViewController/Classes/**/*'
  s.resources = 'TDFCalendarViewController/Assets/**/*'
  
  # s.resource_bundles = {
  #   'TDFCalendarViewController' => ['TDFCalendarViewController/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
    

  # 源码配置都放这里面
  tdfire_source_configurator = lambda do |s|
    s.dependency 'Masonry'
    s.dependency 'MBProgressHUD'
    s.dependency 'libextobjc'
    s.dependency 'TDFCore'
    s.dependency 'GYLConfigurableClasses'
    s.dependency 'GYLOptionPickerController'
    s.dependency 'GYLResourcePack'
    s.dependency 'GYLLocationString/TDFLocationString'

    
  end

    # 这一块原样拷贝即可（记得放在最后面）
  unless %w[tdfire_set_binary_download_configurations tdfire_source tdfire_binary].reduce(true) { |r, m| s.respond_to?(m) & r }

    tdfire_source_configurator.call s 
  else
    s.tdfire_source tdfire_source_configurator
    s.tdfire_binary tdfire_source_configurator
    s.tdfire_set_binary_download_configurations
  end

  
end
