# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'theeleven/flex/version'

Gem::Specification.new do |spec|
  spec.name          = "theeleven-flex"
  spec.version       = Theeleven::Flex::VERSION
  spec.authors       = ["Jørgen Sundt"]
  spec.email         = ["jorgen@theeleven.co.uk"]

  spec.summary       = %q{A simple flexbox grid system for IE10+}
  spec.description   = %q{Only for the swolest of browsers}
  spec.homepage      = "https://github.com/jsundt/theeleven-gems"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rails"
  spec.add_development_dependency "sass-rails"
  spec.add_development_dependency "autoprefixer-rails"
end
