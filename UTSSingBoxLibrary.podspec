#
# Be sure to run `pod lib lint UTSSingBoxLibrary.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UTSSingBoxLibrary'
  s.version          = '1.0.0'
  s.summary          = 'framework'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Library framework.
                       DESC

  s.homepage         = 'https://github.com/52yaoer/UTSSingBoxLibrary'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '176142998' => '176142998@qq.com' }
  s.source           = { :http => 'https://github.com/52yaoer/UTSSingBoxLibrary/releases/download/1.0.0/Libraryframework.zip' }

  s.ios.deployment_target = '15.0'

  s.source_files = '*.h'
  
  s.subspec 'Core' do |ss|
      ss.vendored_frameworks = '*.framework'
      ss.libraries  = "libresolv.tbd"
  end


  s.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
  }
end
