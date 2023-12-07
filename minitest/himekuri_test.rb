# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'minitest/autorun'
require 'himekuri/version'

# Mini_test file load.
class VersionTest < Minitest::Test
  def test_version
    @v1 = Himekuri::VERSION
    @v2 = '1.0.0'

    refute_equal(@v1, @v2)
    assert_operator(@v1, :<, @v2)
  end
end
