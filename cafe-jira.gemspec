# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cafe/jira/version'

Gem::Specification.new do |spec|
  spec.name          = "cafe-jira"
  spec.version       = Cafe::Jira::VERSION
  spec.authors       = ["Faraaz Khan"]
  spec.email         = ["faraaz@rationalizeit.us"]
  spec.description   = %q{JIRA Integration for CAFE}
  spec.summary       = %q{JIRA Integration for CAFE}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.4"
  spec.add_development_dependency "rake"
  spec.add_dependency "cafe"
end
