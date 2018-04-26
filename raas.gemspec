Gem::Specification.new do |s|
  s.name = 'raas'
  s.version = '2.0.0'
  s.summary = 'raas'
  s.description = 'With this RESTful API you can integrate a global reward or incentive program into your app or platform. If you have any questions or if you\'d like to receive your own credentials, please contact us at devsupport@tangocard.com.'
  s.authors = ['APIMatic SDK Generator']
  s.email = 'support@apimatic.io'
  s.homepage = 'https://apimatic.io'
  s.license = 'MIT'
  s.add_dependency('logging', '~> 2.0')
  s.add_dependency('faraday', '~> 0.10.0')
  s.add_dependency('test-unit', '~> 3.1.5')
  s.add_dependency('certifi', '~> 2016.9', '>= 2016.09.26')
  s.add_dependency('faraday-http-cache', '~> 1.2', '>= 1.2.2')
  s.required_ruby_version = '~> 2.0'
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
end
