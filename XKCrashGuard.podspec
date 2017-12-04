#
# Be sure to run `pod lib lint XKCrashGuard.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'XKCrashGuard'
  s.version          = '0.0.1'
  s.summary          = 'crashGuard'

  s.description      = <<-DESC
hook crash Guard
                       DESC

  s.homepage         = 'https://github.com/ParadiseH/XKCrashGuard'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '289722789@qq.com' => '289722789@qq.com' }
  s.source           = { :git => 'https://github.com/ParadiseH/XKCrashGuard.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'XKCrashGuard/Classes/**/*'
end
