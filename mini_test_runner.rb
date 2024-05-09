# frozen_string_literal: true

require "#{File.dirname(__FILE__)}/req/minitest"

# The new instance will be deleted after process ends.
class MiniTestFile
  attr_reader :mini_test

  def initialize
    encoding_style
    @mini_test = Mini(true, '/GitHub/himekuri/minitest')
  end

  def remove
    remove_instance_variable(:@mini_test)
  end
end

# About Exception, begin ~ rescue ~ ensure.
begin
  SimpleCov.start
  MiniTestFile.new.remove
rescue StandardError => e
  puts e.backtrace.tanraku_exit
ensure
  GC.compact
end

__END__
