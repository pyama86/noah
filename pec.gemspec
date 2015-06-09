# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pec/version'

Gem::Specification.new do |spec|
  spec.name          = "pec"
  spec.version       = Pec::VERSION
  spec.authors       = ["kazuhiko yamashita"]
  spec.email         = ["pyama@pepabo.com"]

  spec.summary       = %q{openstack vm booter.}
  spec.description   = %q{openstac vm booter.}
  spec.homepage      = "http://ten-snapon.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end