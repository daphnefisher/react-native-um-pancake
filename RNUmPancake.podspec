require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "RNUmPancake"
  s.version      = package['version'].gsub(/v|-beta/, '')
  s.summary      = package['description']
  s.description  = package['description']
  s.homepage     = package['homepage']
  s.license      = package['license']
  s.author       = package['author']
  
  s.platform     = :ios, "11.0"
  s.source       = { :git => "https://github.com/daphnefisher/react-native-um-pancake.git", :tag => "master" }

  s.source_files = "ios/*.{h,m}"

  s.requires_arc = true
  s.preserve_paths = 'README.md', 'package.json', 'index.js'
  s.resources = ['fonts/*.ttf', 'fonts/*.otf']

  s.dependency 'React'
  s.dependency 'UMCommon','~> 7.4.1'
  s.dependency 'UMDevice','~> 3.1.0'
  s.dependency 'UMAPM','~> 1.8.3'
  s.dependency 'UMPush'

end

  