# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lpgrid/version'

Gem::Specification.new do |spec|
  spec.name          = "lpgrid"
  spec.version       = Lpgrid::VERSION
  spec.authors       = ["Tomas Valent"]
  spec.email         = ["equivalent@eq8.eu"]
  spec.description   = %q{Last Pass Grid reader}
  spec.summary       = %q{Reads last pass grid.csv. Just save it to your LastPass generated MFA grid to ~/.grid.csv and run command lpgrid}
  spec.homepage      = "https://github.com/equivalent/lpgrid"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
