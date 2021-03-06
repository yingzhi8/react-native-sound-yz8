require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name                = "RNSound"
  s.version             = package['version']
  s.summary             = package['description']
  s.homepage            = "https://github.com/yingzhi8/react-native-sound-yz8"
  s.license             = package['license']
  s.author              = package['author']
  s.source              = { :git => 'https://github.com/yingzhi8/react-native-sound-yz8.git', :tag => "v#{s.version}" }
  s.default_subspec     = 'Core'
  s.requires_arc        = true
  s.platform            = :ios, "7.0"

  s.dependency 'React'

  s.subspec 'Core' do |ss|
    ss.source_files     = "RNSound/*.{h,m}"
  end

end
