<img src="http://static.mparticle.com/sdk/logo.svg" width="280">

# mParticle CrashReporter

This is a fork of [PLCrashReporter](https://www.plcrashreporter.org) compiled and customized to work with the [mParticle Apple SDK](https://github.com/mParticle/mParticle-Apple-SDK). The framework is used optionally.

## Installation

When using the [mParticle Apple SDK](https://github.com/mParticle/mParticle-Apple-SDK) you can include the crash reporter in your `Podfile` as following:

```ruby
target '<Your Target>' do
    pod 'mParticle-Apple-SDK', '~> 6'
    pod 'mParticle-CrashReporter', '~> 1.3'
end
```

#### CocoaPods and `use_Frameworks!`

In case you need to include `use_framewoks!` in your `Podfile` you will need to include a pre and post scripts to help in the configuration of your app's Xcode `xcworkspace`

```ruby
inhibit_all_warnings!

pre_install do |pre_i|
    def pre_i.verify_no_static_framework_transitive_dependencies; end
end

target '<Your Target>' do
    use_frameworks!

    pod 'mParticle-Apple-SDK', '~> 6'
    pod 'mParticle-CrashReporter', '~> 1.3'
end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            if target.name == "mParticle-CrashReporter"
                config.build_settings["OTHER_LDFLAGS"] = '$(inherited) "-ObjC"'
            end
        end
    end
end
```


## Documentation

Detailed documentation and other information about mParticle SDK can be found at: [SDK Documentation](http://docs.mparticle.com/#mobile-sdk-guide)

## Author

mParticle, Inc.

## Support

<support@mparticle.com>
