# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'unit_conversion/version'

Gem::Specification.new do |spec|
  spec.name          = "unit_conversion"
  spec.version       = UnitConversion::VERSION
  spec.authors       = ["James Youn"]
  spec.email         = ["jamesyoun710@gmail.com"]

  spec.summary       = %q{Unit conversions}
  spec.homepage      = "https://github.com/eternal44/unit_conversion"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
