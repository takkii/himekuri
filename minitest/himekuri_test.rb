# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require "#{File.dirname(__FILE__)}/../req/require_mini"

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

    week_calc = %w[日 月 火 水 木 金 土][td.wday]
    @week = "#{year}年#{month}月#{day}日 : #{week_calc}曜日"

    @zella = Zella.formula

    assert_equal(@zella, @week)
  end
end
