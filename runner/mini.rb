# frozen_string_literal: true

require "#{File.dirname(__FILE__)}/../req/mini_run"

# The new instance will be deleted after process ends.
class MiniTestFile
  attr_reader :minitest

  def initialize
    encoding_style
    host_os = RbConfig::CONFIG['host_os']
    case host_os
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      begin
        # Mini, Switch ON / (true, string).
        @minitest = Mini(true, '/GitLab/himekuri/minitest')
      rescue
        tanraku_execute
      end
    when /darwin|mac os/
      # Don't have Macintosh PC.
    when /linux/
      begin
        # MiniW, Switch ON / (true, string, string).
        @minitest = MiniW(true, '/mnt/c/Users/sudok', '/GitLab/himekuri/minitest')
      rescue
        tanraku_execute
      end
    else
      begin
        raise
      rescue
        puts 'Env, UNIX and Windows only. Other OS is Exception.'
        tanraku_execute
      end
    end
  end

  def remove
    remove_instance_variable(:@minitest)
  end
end

# Coverage, Start 'SimpleCov.start' add.
begin
  MiniTestFile.new.remove
rescue
  puts 'Tanraku_VERSION: '.to_s + Tanraku::VERSION
  tanraku_execute
ensure
  GC.compact
end

__END__
