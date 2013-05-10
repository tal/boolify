# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'boolify/version'

Gem::Specification.new do |spec|
  spec.name          = "boolify"
  spec.version       = Boolify::VERSION
  spec.authors       = ["Tal Atlas"]
  spec.email         = ["me@tal.by"]
  spec.description   = %q{helper methods for determining whether an object can be interpreted as true or false}
  spec.summary       = %q{helper methods for determining whether an object can be interpreted as true or false}
  spec.homepage      = "https://github.com/tal/boolify"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
