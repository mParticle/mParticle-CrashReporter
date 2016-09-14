Pod::Spec.new do |s|
    s.name                    = "mParticle-CrashReporter"
    s.version                 = "1.3.0"
    s.summary                 = "mParticle CrashReporter"

    s.description             = <<-DESC
                                Plausible CrashReporter provides an in-process crash reporting framework for use on both iOS and Mac OS X, and powers many of the crash reporting
                                services available for iOS, including mParticle, HockeyApp, Flurry, Crittercism and FoglightAPM.
                                DESC

    s.homepage                = "https://www.plcrashreporter.org"
    s.license                 = { :type => 'MIT' }
    s.authors                 = { "Plausible Labs Cooperative, Inc." => "contact@plausible.coop",
                                  "mParticle" => "support@mparticle.com" }
    s.source                  = { :git => "https://github.com/mParticle/mParticle-CrashReporter.git", :tag => s.version.to_s }
    s.platform                = :ios, '8.0'
    s.ios.vendored_frameworks = 'Frameworks/mParticle-CrashReporter.framework'
end
