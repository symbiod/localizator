# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'localizator/version'

Gem::Specification.new do |spec|
  spec.name          = "localizator"
  spec.version       = Localizator::VERSION
  spec.authors       = ["Marat Khusnetdinov"]
  spec.email         = ["marat@khusnetdinov.ru"]

  spec.summary       = "Localizator is a script for translation locales using AWS translate"
  spec.description   = "Localizator is a script for translation locales using AWS translate"
  spec.homepage      = "https://github.com/symbiod/localizator"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.4.20"
  spec.add_development_dependency "rake", ">= 12.3.3"
  spec.add_development_dependency "rspec", "~> 3.5"
  spec.add_development_dependency "pry"

  spec.add_dependency "google-cloud-translate"
end
