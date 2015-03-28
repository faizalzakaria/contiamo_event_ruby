# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'contiamo_event/version'

Gem::Specification.new do |spec|
  spec.name          = "contiamo_event"
  spec.version       = ContiamoEvent::VERSION
  spec.authors       = ["Faizal Zakaria"]
  spec.email         = ["phaibusiness@gmail.com"]
  spec.summary       = %q{Contiamo event library}
  spec.description   = %q{Contiamo event library to send users, events and sessions}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'json'
  spec.add_runtime_dependency 'faraday'
end
