# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'date'
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

  def test_day_of_week
    td = Date.today

    year = td.year.to_i
    month = td.month.to_i
    day = td.day.to_i

    # Year = 2023
    # calc = (year + year / 4 - year / 100 + year / 400 + (13 * month + 8) / 5 + day) % 7

    # Year = 2024
    calc = (year + year / 4 - year / 100 + year / 400 + (13 * month + 8) / 5 + day) % 7 + 1

    @zella = %w[日 月 火 水 木 金 土][calc]
    @week = %w[日 月 火 水 木 金 土][td.wday]

    assert_equal(@zella, @week)
  end
end
