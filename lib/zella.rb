# frozen_string_literal: true

require 'date'

# zella formula Instance.
class Zella
  # Today
  @@td = Date.today

  # zella uru calc
  @@calc_uru = ((365 * @@td.year.to_i + @@td.year.to_i / 4 - @@td.year.to_i / 100 + @@td.year.to_i / 400 + (306 * (@@td.month.to_i + 1)) / 10 + @@td.day.to_i) - 427) % 7

  # zella calc
  @@calc = (@@td.year.to_i + @@td.year.to_i / 4 - @@td.year.to_i / 100 + @@td.year.to_i / 400 + (13 * @@td.month.to_i + 8) / 5 + @@td.day.to_i) % 7

  # use Web.
  def self.formula

    # if zella uru calc
    if @@td.year.to_i % 4 == 0 && @@td.year.to_i % 100 != 0 || @@td.year.to_i % 400 == 0
      @@calc_uru
      week = %w[日 月 火 水 木 金 土][@@calc_uru]
    else
      @@calc
      week = %w[日 月 火 水 木 金 土][@@calc]
    end

    # Result.
    begin
      "#{@@td.year.to_i}年#{@@td.month.to_i}月#{@@td.day.to_i}日 : #{week}曜日"
    rescue StandardError => e
      e.backtrace
    end
  end

  # use Console.
  def self.formula_print

    if ARGV[1].nil?
      @@td.year.to_i
      @@td.month.to_i
      @@td.day.to_i
    else
      @@td.year.to_i = ARGV[1].to_i
      @@td.month.to_i = ARGV[2].to_i
      @@td.day.to_i = ARGV[3].to_i
    end

    # if zella uru calc
    if @@td.year.to_i % 4 == 0 && @@td.year.to_i % 100 != 0 || @@td.year.to_i % 400 == 0
      @@calc_uru
      week = %w[日 月 火 水 木 金 土][@@calc_uru]
    else
      @@calc
      week = %w[日 月 火 水 木 金 土][@@calc]
    end

    # begin ~ rescue ~ ensure.
    begin
      puts "#{@@td.year.to_i}年#{@@td.month.to_i}月#{@@td.day.to_i}日 : #{week}曜日"
    rescue StandardError => e
      puts e.backtrace
    end
  end
end
