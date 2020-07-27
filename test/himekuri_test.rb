# frozen_string_literal: true

require 'test_helper'

class HimekuriTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Himekuri::VERSION
  end

  def setup
    @version = Himekuri::VERSION
    @versions = '0.1.5'
    @after = Time.new.strftime('%Y年%m月%d日　%H時%M分%S秒')
    @before = Time.now.strftime('%Y年%m月%d日　%H時%M分%S秒')
  end

  def test_new
    assert_equal @version, @versions
    assert_equal @after, @before
  end

  def test_version_should_be_string
    assert_kind_of String, @version
    assert_instance_of String, @versions
  end

  def test_version_should_be_str
    assert_kind_of String, @versions
    assert_instance_of String, @version
  end

  def test_version_should_be_after
    assert_kind_of String, @after
    assert_instance_of String, @before
  end

  def test_version_should_be_before
    assert_kind_of String, @before
    assert_instance_of String, @after
  end

  def test_it_does_something_useful
    # assert false
  end
end
