# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'skebby/version'

Gem::Specification.new do |spec|
  spec.name          = "skebby"
  spec.version       = Skebby::VERSION
  spec.authors       = ["Alessandro Desantis"]
  spec.email         = ["desa.alessandro@gmail.com"]
  spec.summary       = %q{A Ruby client for the Skebby SMS API.}
  spec.description   = %q{A Ruby client for the Skebby SMS API.}
  spec.homepage      = "https://github.com/interconn-wisp/skebby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "httparty", "~> 0.13"

  spec.add_development_dependency "webmock", '~> 1.17'
  spec.add_development_dependency "vcr", '~> 2.8'
  spec.add_development_dependency "bundler", '~> 1.5'
  spec.add_development_dependency "rake", '~> 10.1'
  spec.add_development_dependency "rspec", '~> 2.14'
  spec.add_development_dependency "fuubar", '~> 1.3'
end
