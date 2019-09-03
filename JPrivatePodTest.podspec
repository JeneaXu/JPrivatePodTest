#
# Be sure to run `pod lib lint JPrivatePodTest.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'JPrivatePodTest'
  s.version          = '0.1.0'
  s.summary          = '自己制作的一个依赖库'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                     这是一个自己制作的依赖库，用来练习如何制作依赖库以及私有仓库。
                       DESC
  #主页：这里要填写可以访问的地址，不然验证不通过
  s.homepage         = 'https://github.com/JeneaXu/JPrivatePodTest'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'JeneaXu' => '1379302683@qq.com' }
  #项目地址，这里不支持ssh地址，验证不通过，只支持http和https，最好使用https。
  #这里的s.source须指向存放源代码的链接地址，而不是托管spec文件的repo地址；
  s.source           = { :git => 'https://github.com/JeneaXu/JPrivatePodTest.git', :tag => s.version.to_s }
  
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'JPrivatePodTest/Classes/**/*'
  
  # s.resource_bundles = {
  #   'JPrivatePodTest' => ['JPrivatePodTest/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
