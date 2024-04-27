# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require "#{File.dirname(__FILE__)}/../req/require_mini"

# Mini_test file load.
class VersionTest < Minitest::Test

  # himekuri version
  def test_version
    @v1 = Himekuri::VERSION
    @v2 = '1.0.0'

    refute_equal(@v1, @v2)
    assert_operator(@v1, :<, @v2)
  end

  # fomula zella
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

  # himekuri function
  def test_himekuri
    dt = Date.today
    week = %w[日 月 火 水 木 金 土][dt.wday]
    t = Time.new # 今日の日付と時刻
    @himekuri_manual ="#{t.strftime('%Y年%m月%d日 : %H時%M分%S秒 : ')}#{week}曜日"
    @himekuri = HimekuriClass.new.himekuri

    assert_equal(@himekuri, @himekuri_manual)
  end

  # reiwa function
  def test_reiwa
    td = Date.today
    nen = %w[令和]
    @reiwa_manual = "#{nen[0]}#{td.year - 2018}年#{td.month}月#{td.day}日#{%w[日 月 火 水 木 金 土][td.wday]}曜日"
    @reiwa = HimekuriClass.new.reiwa

    assert_equal(@reiwa, @reiwa_manual)
  end

  # count function
  def test_count
    t = Time.new
    x = Time.mktime(t.year, t.month, t.day)
    y = Time.mktime(t.year + 1, 1, 1)

    if (((y - x) / 60 / 60 / 24) - 1).round.to_i.zero?
      @count_manual = '年の瀬、今年もお世話になりました。来年もよろしくお願いします！'
    elsif (((y - x) / 60 / 60 / 24) - 1).round.to_i == 1
      @count_manual = '元旦、新年明けましておめでとうございます！'
    else
      @count_manual = "来年の1月1日まであと: #{(((y - x) / 60 / 60 / 24) - 1).round} 日です"
    end

    @count = HimekuriClass.new.count

    assert_equal(@count, @count_manual)
  end

  # wahugetsu function
  def test_wahugetsu
    td = Date.today
    nen = %w[令和]
    nen_y = %w[無 睦月 如月 弥生 卯月 皐月 水無月 文月 葉月 長月 神無月 霜月 師走][td.month]

    begin
      raise '「無」に辿り着いてはいけません！' if td.month.to_s.to_i.zero?

      @wahugetsu_manual = "#{nen[0]}#{td.year - 2018}年#{td.month}月 : #{nen_y}"
    rescue StandardError => e
      e.backtrace
    end
    @wahugetsu = HimekuriClass.new.wahugetsu_web

    assert_equal(@wahugetsu, @wahugetsu_manual)
  end
end
