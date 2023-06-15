# frozen_string_literal: true

# frozen_string_literal: true

# --------------------------------------
require 'minitest'
require 'minitest/autorun'
require 'minitest/unit'
require 'minitest/reporters'
require 'himekurits'
require 'tanraku'
# --------------------------------------

# Default encoding utf8, Encoding change here.
def encoding_style
  Encoding.default_internal = 'UTF-8'
  Encoding.default_external = 'UTF-8'
end

# The new instance will be deleted after process ends.
class MiniTestFile
  attr_reader :mini_test

  def initialize
    require 'mini_auto_runner'
    @mini_test = Mini_Runner(true, '/GitHub/himekuri/test')
  end

  def remove
    remove_instance_variable(:@mini_test)
  end
end

# About Exception, begin ~ rescue ~ ensure.
begin
  MiniTestFile.new.remove
rescue StandardError => e
  puts e.backtrace
  encoding_style.tanraku_exit
ensure
  GC.compact
end

__END__
