Pod::Spec.new do |s|
  s.name             = 'UTSSingBoxLibrary'
  s.version          = '1.0.2'
  s.summary          = 'framework'

  s.description      = <<-DESC
    Library framework.
                       DESC

  s.homepage         = 'https://github.com/52yaoer/UTSSingBoxLibrary'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '176142998' => '176142998@qq.com' }
  s.source           = { :http => 'https://github.com/52yaoer/UTSSingBoxLibrary/releases/download/1.0.2/Libraryframework.zip' }

  s.ios.deployment_target = '15.0'

  s.subspec 'Core' do |ss|
      ss.vendored_frameworks = '*.framework'
      ss.libraries  = "resolv"
  end
  s.dependency "CSQLite", ">= 1.0.0"

  s.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
  }
end
