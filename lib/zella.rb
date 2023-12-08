# frozen_string_literal: true

require 'date'

# zella  class.
class Zella
  def self.formula
    # Today
    td = Date.today

    if ARGV[1].nil?
      year = td.year.to_i
      month = td.month.to_i
      day = td.day.to_i
    else
      year = ARGV[1].to_i
      month = ARGV[2].to_i
      day = ARGV[3].to_i
    end

    # zella calc
    calc = (year + year / 4 - year / 100 + year / 400 + (13 * month + 8) / 5 + day) % 7

    if calc.zero?
      puts "#{year}年#{month}月#{day}日 : 日曜日"
    elsif calc == 1
      puts "#{year}年#{month}月#{day}日 : 月曜日"
    elsif calc == 2
      puts "#{year}年#{month}月#{day}日 : 火曜日"
    elsif calc == 3
      puts "#{year}年#{month}月#{day}日 : 水曜日"
    elsif calc == 4
      puts "#{year}年#{month}月#{day}日 : 木曜日"
    elsif calc == 5
      puts "#{year}年#{month}月#{day}日 : 金曜日"
    elsif calc == 6
      puts "#{year}年#{month}月#{day}日 : 土曜日"
    else
      begin
        raise 'あり得ない数 : 曜日の判定をしません。'
      rescue StandardError => e
        e.cause.message
      end
    end
  end
end
