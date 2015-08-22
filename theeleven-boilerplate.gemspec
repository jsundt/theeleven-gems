# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'theeleven/boilerplate/version'

Gem::Specification.new do |spec|
  spec.name          = "theeleven-boilerplate"
  spec.version       = Theeleven::Boilerplate::VERSION
  spec.authors       = ["Jørgen Sundt"]
  spec.email         = ["jorgen@theeleven.co.uk"]
  spec.summary       = %q{A simple generator to setup initial front-end files}
  spec.description   = %q{Creates all base folders and files for our initial front-end setup}
  spec.homepage      = "https://github.com/jsundt/theeleven-gems"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
