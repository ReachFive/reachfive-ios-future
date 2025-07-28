require_relative './version'

Pod::Spec.new do |spec|
  spec.name                  = "Reach5Future"
  spec.version               = $VERSION
  spec.summary               = "Reachfive Future bridge"
  spec.description           = <<-DESC
      ReachFive Compatibility bridge to keep BrightFutures with Reach5
  DESC
  spec.homepage              = "https://github.com/ReachFive/reachfive-ios-future"
  spec.license               = { :type => "MIT", :file => "LICENSE" }
  spec.author                = "ReachFive"
  spec.authors               = { "François" => "francois.devemy@reach5.co", "Pierre" => "pierre.bar@reach5.co" }
  spec.swift_versions        = ["5"]
  spec.source                = { :git => "https://github.com/ReachFive/reachfive-ios-future.git", :tag => "#{spec.version}" }
  spec.source_files          = "Sources/Core/Classes/**/*.*"
  spec.platform              = :ios
  spec.ios.deployment_target = $IOS_DEPLOYMENT_TARGET
  spec.resource_bundle = {
    'Reach5Future' => ['Sources/Core/PrivacyInfo.xcprivacy']
  }

  spec.prepare_command = <<-CMD
    VERSION=$(ruby -r ./version.rb -e 'puts $VERSION')
    /usr/libexec/PlistBuddy -c "Set :CFBundleShortVersionString $VERSION" Sources/Core/Info.plist
  CMD

  spec.dependency 'BrightFutures', '~> 8.2.0'
  spec.dependency 'Reach5', '~> 9.0.0'
end
