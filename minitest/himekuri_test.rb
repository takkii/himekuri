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

    if year % 4 == 0 && year % 100 != 0 || year % 400 == 0
      if "#{month}".match?(/^[2]$/)
        calc = ((365 * year + year / 4 - year / 100 + year / 400 + (306 * (month + 1)) / 10 + day) - 426) % 7
      elsif "#{month}".match?(/^11$/)
        calc = ((365 * year + year / 4 - year / 100 + year / 400 + (306 * (month + 1)) / 10 + day) - 427) % 7
      else
        calc = ((365 * year + year / 4 - year / 100 + year / 400 + (306 * (month + 1)) / 10 + day) - 428) % 7
      end
    else
      calc = (year + year / 4 - year / 100 + year / 400 + (13 * month + 8) / 5 + day) % 7
    end

    @zella = %w[日 月 火 水 木 金 土 日][calc]
    @week = %w[日 月 火 水 木 金 土][td.wday]

    assert_equal(@zella, @week)
  end
end
