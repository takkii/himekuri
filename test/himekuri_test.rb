# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/reporters'
require_relative File.join(File.dirname(__FILE__), '../lib/himekuri/version.rb')

# Mini_test file load.
class VersionTest < Minitest::Test
  def test_version
    @v1 = Himekuri::VERSION
    @v2 = '2.0.0'
    
    refute_equal(@v1, @v2)
    assert_operator(@v1, :<, @v2)
  end
end
