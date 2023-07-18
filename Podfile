source 'https://cdn.cocoapods.org/'

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      if ['FlexibleDiff'].include? target.name
        target.build_configurations.each do |config|
          config.build_settings['SWIFT_VERSION'] = '5'
        end
      end
      if config.build_settings['MACOSX_DEPLOYMENT_TARGET'] == '' || Gem::Version.new(config.build_settings['MACOSX_DEPLOYMENT_TARGET']) < Gem::Version.new("10.13")
        config.build_settings['MACOSX_DEPLOYMENT_TARGET'] = '10.13'
      end
    end
  end
end

target 'Brook' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for Brook

  pod 'Alamofire', '~> 5.0'
  
end
