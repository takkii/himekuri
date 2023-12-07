# frozen_string_literal: true

# bundle exec
require 'bundler'
require 'rake'
require 'rake/testtask'

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  warn e.message
  warn 'Run `bundle install` to install missing gems'
  exit e.status_code
end

# himekuri rake
task default: [:test]
Rake::TestTask.new do |mini_test|
  mini_test.test_files = Dir['minitest/**/*_test.rb']
  mini_test.verbose = true
end
