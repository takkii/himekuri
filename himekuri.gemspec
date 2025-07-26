# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'himekuri/version'
require 'himekuri/gem_version'

Gem::Specification.new do |spec|
  spec.required_rubygems_version = '~> 3.6.9' if spec.respond_to? RbGemversion::VERSION

  # Info
  spec.name          = 'himekuri'
  spec.version       = Himekuri::VERSION
  spec.authors       = ["Takayuki Kamiyama"]
  spec.email         = ['karuma.reason@gmail.com']

  # profile
  spec.summary       = 'Japanese calendar himekuri.'
  spec.description   = '日本語版、日めくり。'
  spec.homepage      = 'https://github.com/takkii/himekuri'
  spec.license       = 'MIT'

  # required RUBY / RUBYGEMS VERSION
  spec.required_ruby_version = ['>= 3.0']
  spec.required_rubygems_version = RbGemversion::VERSION

  # Needing to rubygems
  spec.add_runtime_dependency('bundler', '~> 2.6')
  spec.add_runtime_dependency('rake', '~> 13.2')
  spec.add_runtime_dependency('minitest', '~> 5.25')
  spec.add_runtime_dependency('simplecov', '~> 0.22')

  # git
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^mini_test/}) }
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^minitest/})
  spec.require_paths = ['lib']
end
