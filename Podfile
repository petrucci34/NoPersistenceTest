platform :ios, '10.0'
use_frameworks!

target 'RealmTest' do
    pod 'Fabric'
    pod 'TwitterKit'
    pod 'TwitterCore'
    pod 'RealmSwift'
end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['SWIFT_VERSION'] = '2.3' # or '3.0'
        end
    end
end
