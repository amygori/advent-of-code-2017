#!/usr/bin/env ruby
# encoding: utf-8
gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'one'
require 'minitest/pride'

class OneTest < Minitest::Test

  def test_dummy
    n = 2373
    assert_equal 2, One.captcha(n)
  end

  def test_normal_case
    n = 1122
    assert_equal 3, One.captcha(n)
  end

  def test_long_digit
    n = 91212129
    assert_equal 9, One.captcha(n)
  end

  def test_all_matching_digits
    n = 1111
    assert_equal 4, One.captcha(n)
  end

  def test_no_matching_digits(n)
    n = 1234
    assert_equal 0, One.captcha(n)
  end
end
