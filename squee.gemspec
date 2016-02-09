# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'squee/version'

Gem::Specification.new do |spec|
  spec.name          = 'squee'
  spec.version       = Squee::VERSION
  spec.authors       = ['Eric Saxby']
  spec.email         = ['sax@livinginthepast.org']
  spec.summary       = %q{Manage a messagebus using SNS/SQS}
  spec.description   = %q{Manage a messagebus using SNS/SQS}
  spec.homepage      = 'https://github.com/messagebus/squee'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'guard-rspec', '~> 4.3'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.1'
end
