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
    youbi = %w[日 月 火 水 木 金 土][calc]

    # begin ~ rescue ~ ensure.
    begin
      puts "#{year}年#{month}月#{day}日 : #{youbi}曜日"
    rescue StandardError => e
      e.backtrace
    end
  end
end
