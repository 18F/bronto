# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bronto/version'

Gem::Specification.new do |spec|
  spec.name          = "bronto"
  spec.version       = Bronto::VERSION
  spec.authors       = ["Alan deLevie"]
  spec.email         = ["alan.delevie@gsa.gov"]
  spec.summary       = %q{Thesaurus gem}
  spec.description   = %q{Thesaurus gem}
  spec.homepage      = ""
  spec.license       = "Public Domain. See LICENSE.txt"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "wordnet"
  spec.add_dependency "wordnet-defaultdb"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry-rescue"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "simplecov"
end
