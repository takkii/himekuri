# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'date'
require 'time'
require 'himekuri/version'
require 'zella'

class HimekuriClass
  def himekuri_print
    dt = Date.today
    week = %w[日 月 火 水 木 金 土][dt.wday]
    print '時刻を表示 : '
    t = Time.new # 今日の日付と時刻
    print t.strftime('%Y年%m月%d日 : %H時%M分%S秒 : ')
    puts "#{week}曜日"
  end

  def count_print
    t = Time.new
    x = Time.mktime(t.year, t.month, t.day)
    y = Time.mktime(t.year + 1, 1, 1)

    # 1years 365 days.
    if (((y - x) / 60 / 60 / 24) - 1).round.to_i.zero?
      puts '年の瀬、今年もお世話になりました。来年もよろしくお願いします！'
    elsif (((y - x) / 60 / 60 / 24) - 1).round.to_i == 1
      puts '元旦、新年明けましておめでとうございます！'
    else
      puts "来年の1月1日まであと: #{(((y - x) / 60 / 60 / 24) - 1).round} 日です"
    end
  end

  def reiwa_print
    # ------------------------------

    # ------------------------------
    t = Time.new # 今日の日付と時刻
    td = Date.today

    # 令和2年目以降
    nen = %w[令和]

    # 平成から令和の始まり
    # nen = ['平成', '令和']
    # ------------------------------

    # 2019/5/1以降
    # if ("#{td.year}".to_s+"#{td.month}".to_s).match?(/^20201$/)
    # if "#{td.year}" + "#{td.month}" =~ /^20201$/
    #  puts (nen[1] + "#{(td.year - 2018)}年"+"#{td.month}月"+"#{td.day}日") +" "+t.to_date.jisx0301
    # else
    #  puts (nen[1] + "#{(td.year - 2018)}年".gsub(/[1]/,"元")+"#{td.month}月"+"#{td.day}日") +" "+t.to_date.jisx0301
    # end

    # 2020/1/1以降
    puts "#{nen[0] + "#{td.year - 2018}年" + "#{td.month}月" + "#{td.day}日"} : #{t.to_date.jisx0301}"
  end

  def wahugetsu_print
    td = Date.today
    nen = %w[令和]

    case td.month
    when 1
      puts("#{nen[0]}#{td.year - 2018}年#{td.month}月 : 睦月")
    when 2
      puts("#{nen[0]}#{td.year - 2018}年#{td.month}月 : 如月")
    when 3
      puts("#{nen[0]}#{td.year - 2018}年#{td.month}月 : 弥生")
    when 4
      puts("#{nen[0]}#{td.year - 2018}年#{td.month}月 : 卯月")
    when 5
      puts("#{nen[0]}#{td.year - 2018}年#{td.month}月 : 皐月")
    when 6
      puts("#{nen[0]}#{td.year - 2018}年#{td.month}月 : 水無月")
    when 7
      puts("#{nen[0]}#{td.year - 2018}年#{td.month}月 : 文月")
    when 8
      puts("#{nen[0]}#{td.year - 2018}年#{td.month}月 : 葉月")
    when 9
      puts("#{nen[0]}#{td.year - 2018}年#{td.month}月 : 長月")
    when 10
      puts("#{nen[0]}#{td.year - 2018}年#{td.month}月 : 神無月")
    when 11
      puts("#{nen[0]}#{td.year - 2018}年#{td.month}月 : 霜月")
    when 12
      puts("#{nen[0]}#{td.year - 2018}年#{td.month}月 : 師走")
    else
      begin
        raise 'あり得ない数時の月です!'
      rescue StandardError => e
        puts e.cause.message
      end
    end
  end

  def reiwa
    td = Date.today
    # nen = %w(平成 令和)
    # 2019/5/1以降
    # if ("#{td.year}".to_s+"#{td.month}".to_s).match?(/^20201$/)
    #  (nen[1] + "#{(td.year - 2018)}年"+"#{td.month}月"+"#{td.day}日")
    # else
    #  (nen[1] + "#{(td.year - 2018)}年".gsub(/[1]/,"元")+"#{td.month}月"+"#{td.day}日")
    # end

    # 2020/1/1以降
    nen = %w[令和]
    "#{nen[0]}#{td.year - 2018}年#{td.month}月#{td.day}日#{%w[日 月 火 水 木 金 土][td.wday]}曜日"
  end

  def himekuri
    dt = Date.today
    week = %w[日 月 火 水 木 金 土][dt.wday]
    t = Time.new # 今日の日付と時刻
    "#{t.strftime('%Y年%m月%d日 : %H時%M分%S秒 : ')}#{week}曜日"
  end

  def count
    t = Time.new
    x = Time.mktime(t.year, t.month, t.day)
    y = Time.mktime(t.year + 1, 1, 1)

    # 1years 365 days.
    # 1years 365 days.
    if (((y - x) / 60 / 60 / 24) - 1).round.to_i.zero?
      '年の瀬、今年もお世話になりました。来年もよろしくお願いします！'
    elsif (((y - x) / 60 / 60 / 24) - 1).round.to_i == 1
      '元旦、新年明けましておめでとうございます！'
    else
      "来年の1月1日まであと: #{(((y - x) / 60 / 60 / 24) - 1).round} 日です"
    end
  end

  def wahugetsu_web
    td = Date.today
    nen = %w[令和]

    case td.month
    when 1
      "#{nen[0]}#{td.year - 2018}年#{td.month}月 : 睦月"
    when 2
      "#{nen[0]}#{td.year - 2018}年#{td.month}月 : 如月"
    when 3
      "#{nen[0]}#{td.year - 2018}年#{td.month}月 : 弥生"
    when 4
      "#{nen[0]}#{td.year - 2018}年#{td.month}月 : 卯月"
    when 5
      "#{nen[0]}#{td.year - 2018}年#{td.month}月 : 皐月"
    when 6
      "#{nen[0]}#{td.year - 2018}年#{td.month}月 : 水無月"
    when 7
      "#{nen[0]}#{td.year - 2018}年#{td.month}月 : 文月"
    when 8
      "#{nen[0]}#{td.year - 2018}年#{td.month}月 : 葉月"
    when 9
      "#{nen[0]}#{td.year - 2018}年#{td.month}月 : 長月"
    when 10
      "#{nen[0]}#{td.year - 2018}年#{td.month}月 : 神無月"
    when 11
      "#{nen[0]}#{td.year - 2018}年#{td.month}月 : 霜月"
    when 12
      "#{nen[0]}#{td.year - 2018}年#{td.month}月 : 師走"
    else
      begin
        raise 'あり得ない数時の月です!'
      rescue StandardError => e
        e.cause.message
      end
    end
  end

  def version
    print '日めくり数え番号 : '
    puts Himekuri::VERSION
  end

  def help
    puts 'HELP'.center(60, '-')
    puts ''
    puts 'koyomi'
    puts ''
    HimekuriClass.new.himekuri_print
    HimekuriClass.new.count_print
    HimekuriClass.new.reiwa_print
    HimekuriClass.new.version
    HimekuriClass.new.wahugetsu_print
    puts ''
    puts 'koyomi -r'
    puts ''
    HimekuriClass.new.himekuri_print
    puts ''
    puts 'koyomi -k'
    puts ''
    HimekuriClass.new.count_print
    puts ''
    puts 'koyomi -c'
    puts ''
    HimekuriClass.new.reiwa_print
    puts ''
    puts 'koyomi -v'
    puts ''
    HimekuriClass.new.version
    puts ''
    puts 'koyomi -w'
    puts ''
    HimekuriClass.new.wahugetsu_print
    puts ''
    puts 'koyomi -z'
    puts ''
    Zella.formula
    puts ''
    puts 'HELP'.center(60, '-')
  end
end

__END__
