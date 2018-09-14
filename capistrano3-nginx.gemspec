# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/nginx/version'

Gem::Specification.new do |spec|
  spec.name          = 'capistrano3-nginx'
  spec.version       = Capistrano::NGINX_VERSION
  spec.authors       = ['Juan Ignacio Donoso', 'treenewbee']
  spec.description   = %q{Adds suuport to nginx for Capistrano 3.x}
  spec.summary       = %q{Adds suuport to nginx for Capistrano 3.x}
  spec.homepage      = 'https://github.com/treenewbee/capistrano3-nginx'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'capistrano', '~> 3.0'

  spec.add_development_dependency 'rake', '~> 0'
end
