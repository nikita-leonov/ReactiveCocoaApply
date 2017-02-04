Pod::Spec.new do |s|
  s.name             = "ReactiveCocoaApply"
  s.version          = "1.0.1"
  s.summary          = "ReactiveCocoa Singal and SignalProducer extensions for ReactiveSwift for applying operators similar to |> from RAC3."

  s.homepage         = "https://github.com/nikita-leonov/ReactiveCocoaApply"
  s.license          = 'MIT'
  s.author           = { "Nikita Leonov" => "nikita.leonov@gmail.com" }
  s.source           = { :git => "https://github.com/nikita-leonov/ReactiveCocoaApply.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/leonovco'

  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.10"
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'

  s.dependency 'ReactiveSwift', '~> 1.0.0'
end
