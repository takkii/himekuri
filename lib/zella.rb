# frozen_string_literal: true

require 'date'

# zella formula Instance.
class Zella

  # use Web.
  def self.formula

  # Today
  td = Date.today

  # zella uru calc
  calc_uru = ((365 * year + year / 4 - year / 100 + year / 400 + (306 * (month + 1)) / 10 + day) - 427) % 7

  # zella calc
  calc = (year + year / 4 - year / 100 + year / 400 + (13 * month + 8) / 5 + day) % 7

    # if zella uru calc
    if year % 4 == 0 && year % 100 != 0 || year % 400 == 0
      calc_uru
      week = %w[日 月 火 水 木 金 土][@@calc_uru]
    else
      calc
      week = %w[日 月 火 水 木 金 土][@@calc]
    end

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

  # zella uru calc
  calc_uru = ((365 * year + year / 4 - year / 100 + year / 400 + (306 * (month + 1)) / 10 + day) - 427) % 7

  # zella calc
  calc = (year + year / 4 - year / 100 + year / 400 + (13 * month + 8) / 5 + day) % 7

    if ARGV[1].nil?
      year = td.year.to_i
      month = td.month.to_i
      day = td.day.to_i
    else
      year = ARGV[1].to_i
      month = ARGV[2].to_i
      day = ARGV[3].to_i
    end

    # if zella uru calc
    if year % 4 == 0 && year % 100 != 0 || year % 400 == 0
      calc_uru
      week = %w[日 月 火 水 木 金 土][@@calc_uru]
    else
      calc
      week = %w[日 月 火 水 木 金 土][@@calc]
    end

    # begin ~ rescue ~ ensure.
    begin
      puts "#{year}年#{month}月#{day}日 : #{week}曜日"
    rescue StandardError => e
      puts e.backtrace
    end
  end
end
