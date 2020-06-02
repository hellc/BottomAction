Pod::Spec.new do |s|

  s.swift_versions         = '5.0'
  s.name                   = 'BottomAction'
  s.version                = '0.0.1'
  s.summary                = 'Bottom action view'
  s.homepage               = 'https://github.com/hellc/BottomAction'
  s.license                = 'MIT'
  s.author                 = { 'Ivan Manov' => 'ivanmanov@live.com' }
  s.social_media_url       = 'https://twitter.com/ihellc'
  s.resources = "Pod/**/*.xib"
  s.resource_bundles = {
   'BottomAction' => [
       'Pod/**/*.xib'
   ]
  }

  s.requires_arc           = false
  s.ios.deployment_target  = '11.0'

  s.source                 = { :git => 'https://github.com/hellc/BottomAction.git', :tag => s.version }

  s.default_subspec        = 'All'
  
  s.subspec 'All' do |all|
    all.dependency           'BottomAction/Core'
  end
  
  s.subspec 'Core' do |core|
    core.source_files      = 'Pod/**/*.{swift}'
  end

end
