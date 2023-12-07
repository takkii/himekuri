# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'himekuri/version'

Gem::Specification.new do |spec|
  spec.name          = 'himekuri'
  spec.version       = Himekuri::VERSION
  spec.authors       = ['takkii']
  spec.email         = ['karuma.reason@gmail.com']

  spec.summary       = 'Japanese calendar himekuri.'
  spec.description   = '日本語版、日めくり。'
  spec.homepage      = 'https://github.com/takkii/himekuri'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']
end
