# encoding: utf-8

lib = File.expand_path('../lib', __FILE__)
$:.unshift(lib) unless $:.include?(lib)

require 'airm_nagios_check/version'

Gem::Specification.new do |spec|

  spec.name          = "airm_nagios_check"
  spec.version       = AirmNagiosCheck::VERSION
  spec.authors       = ["Javier Juarez"]
  spec.email         = ["javier.juarez@gmail.com"]
  spec.description   = %q{Alfresco index recovery mode check status}
  spec.summary       = %q{A gem for checking Alfresco index recovery mode checks from Nagios}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "choice", "~> 0.1"
  spec.add_dependency "inifile", "~> 2.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end