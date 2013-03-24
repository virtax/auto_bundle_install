# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'auto_bundle_install/version'

Gem::Specification.new do |spec|
  spec.name          = "auto_bundle_install"
  spec.version       = AutoBundleInstall::VERSION
  spec.authors       = ["Dmitriy Partsyrniy"]
  spec.email         = ["liks@mail.ru"]
  spec.description   = "Automatically run 'bundle install'"
  spec.summary       = "Automatically run 'bundle install' from your Sinatra/Rails application"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency 'watchr'
end