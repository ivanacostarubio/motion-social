# -*- encoding: utf-8 -*-
VERSION = "0.3"

Gem::Specification.new do |spec|
  spec.name          = "motion-social"
  spec.version       = VERSION
  spec.authors       = ["Ivan Acosta-Rubio"]
  spec.email         = ["ivan@bakedweb.net"]
  spec.description   = %q{RubyMotion Wrapper around the Social Framework}
  spec.summary       = %q{RubyMotion Wrapper around the Social Framework}
  spec.homepage      = ""
  spec.license       = ""

  files = []
  files << 'README.md'
  files.concat(Dir.glob('lib/**/*.rb'))
  spec.files         = files
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake"
end
