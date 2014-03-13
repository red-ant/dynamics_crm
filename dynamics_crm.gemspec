# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dynamics_crm/version'

Gem::Specification.new do |spec|
  spec.name          = "dynamics_crm"
  spec.version       = DynamicsCRM::VERSION
  spec.authors       = ["Joe Heth"]
  spec.email         = ["joeheth@gmail.com"]
  spec.description   = %q{Ruby API for integrating with MS Dynamics 2011/2013 SOAP API}
  spec.summary       = %q{Ruby gem for integrating with MS Dynamics 2011/2013 SOAP API}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency("curb", "~>0.8.5")
  spec.add_dependency("nokogiri", "~>1.5.10")
  spec.add_dependency("mimemagic", "~>0.2.1")

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'rspec', '~> 2.14.0'
  spec.add_development_dependency 'simplecov', '~> 0.7.1'
end
