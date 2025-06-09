# frozen_string_literal: true

require 'date'

begin
  # himekuri_version = x.x.x-xxxx.xx.xx
  module Himekuri
    @himekuri_version = '0.2.4'
    # t = Date.today
    # build_day = t.strftime('%Y.%m.%d')
    # VERSION = "#{himekuri_version}-#{build_day}".freeze
    VERSION = @himekuri_version.freeze
  end
rescue StandardError => e
  puts e.backtrace
ensure
  GC.compact
end

__END__
