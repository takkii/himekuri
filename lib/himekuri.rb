# frozen_string_literal: true

require 'date'
require 'time'
require 'himekuri/version'

class Object
  def himekuri
    print '時刻を表示:'
    t = Time.new # 今日の日付と時刻
    puts t.strftime('%Y年%m月%d日 %H時%M分%S秒')
  end

  def count
    t = Time.new
    x = Time.mktime(t.year, t.month, t.day)
    y = Time.mktime(t.year + 1, 1, 1)

    # 1years 365 days.
    print '来年の1月1日まであと: '
    print (((y - x) / 60 / 60 / 24) - 1).round
    puts ' 日です'
  end

  def reiwa
    # ------------------------------

    # ------------------------------
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
    puts (nen[0] + "#{(td.year - 2018)}年" + "#{td.month}月" + "#{td.day}日") + ' ' + t.to_date.jisx0301
  end

  def version
  	print '日めくりの数え番号 : '
  	puts Himekuri::VERSION
  end
end
