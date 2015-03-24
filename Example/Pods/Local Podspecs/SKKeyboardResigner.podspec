Pod::Spec.new do |s|
  s.name             = "SKKeyboardResigner"
  s.version          = "0.1.0"
  s.summary          = "A short description of SKKeyboardResigner."
  s.description      = <<-DESC
                       An optional longer description of SKKeyboardResigner

                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = "https://github.com/skyweb07/SKKeyboardResigner"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Oscar Duran" => "skyweb09@hotmail.es" }
  s.source           = { :git => "https://github.com/skyweb07/SKKeyboardResigner.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/skyweb07'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'SKKeyboardResigner' => ['Pod/Assets/*.png']
  }

  s.frameworks = 'UIKit'
end
