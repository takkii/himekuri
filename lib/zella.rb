# frozen_string_literal: true

require 'date'

# zella formula Instance.
class Zella
  # use Web.
  def self.formula
    # Today
    td = Date.today

    # use Import.
    year = td.year.to_i
    month = td.month.to_i
    day = td.day.to_i

    # 西暦が 4 で割り切れる年はうるう年とする
    if year % 4 == 0
      calc = (year + year / 4 - year / 100 + year / 400 + (13 * month + 8) / 5 + day) % 7 + 1
    # 西暦が 100 でも割り切れる年はうるう年としない
    elsif year % 100 == 0
      calc = (year + year / 4 - year / 100 + year / 400 + (13 * month + 8) / 5 + day) % 7
    # 西暦が 400 でも割り切れる年はうるう年とする
    elsif year % 400 == 0
      calc = (year + year / 4 - year / 100 + year / 400 + (13 * month + 8) / 5 + day) % 7 + 1
    else
      calc = (year + year / 4 - year / 100 + year / 400 + (13 * month + 8) / 5 + day) % 7
    end

    week = %w[日 月 火 水 木 金 土][calc]

    # Result.
    begin
      "#{year}年#{month}月#{day}日 : #{week}曜日"
    rescue StandardError => e
      e.backtrace
    end
  end

  # use Console.
  def self.formula_print
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

    # 西暦が 4 で割り切れる年はうるう年とする
    if year % 4 == 0
      calc = (year + year / 4 - year / 100 + year / 400 + (13 * month + 8) / 5 + day) % 7 + 1
    # 西暦が 100 でも割り切れる年はうるう年としない
    elsif year % 100 == 0
      calc = (year + year / 4 - year / 100 + year / 400 + (13 * month + 8) / 5 + day) % 7
    # 西暦が 400 でも割り切れる年はうるう年とする
    elsif year % 400 == 0
      calc = (year + year / 4 - year / 100 + year / 400 + (13 * month + 8) / 5 + day) % 7 + 1
    else
      calc = (year + year / 4 - year / 100 + year / 400 + (13 * month + 8) / 5 + day) % 7
    end

    week = %w[日 月 火 水 木 金 土][calc]

    # begin ~ rescue ~ ensure.
    begin
      puts "#{year}年#{month}月#{day}日 : #{week}曜日"
    rescue StandardError => e
      puts e.backtrace
    end
  end
end
