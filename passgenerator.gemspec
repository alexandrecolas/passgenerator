# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'passgenerator/version'

Gem::Specification.new do |spec|
  spec.name          = "passgenerator"
  spec.version       = Passgenerator::VERSION
  spec.authors       = ["Alexandre Colas"]
  spec.email         = ["colasalexandre@gmail.com"]
  spec.summary       = "Generate Password easily."
  spec.description   = "This project shows how to start using Thor in a new gem."
  spec.homepage      = "https://github.com/alexandrecolas/passgenerator"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake", '~> 0'

  spec.add_runtime_dependency "thor", '~> 0'
end
