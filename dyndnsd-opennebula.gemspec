# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "dyndnsd/opennebula/version"

Gem::Specification.new do |spec|
  spec.name          = "dyndnsd-opennebula"
  spec.version       = Dyndnsd::Opennebula::VERSION
  spec.authors       = ["Mamut3D"]
  spec.email         = ["janca@ics.muni.cz"]

  spec.summary       = "Export of tokens from OpenNebula for Dyndnsd config."
  spec.description   = "Export of tokens from OpenNebula for Dyndnsd config."
  spec.homepage      = "https://github.com/Mamut3D/dyndnsd-opennebula"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_runtime_dependency "opennebula", "~> 5.4"
  spec.add_runtime_dependency "settingslogic", "~> 2.0"
end
