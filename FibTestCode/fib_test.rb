require 'test/unit'
require './fib'

class FibTest < Test::Unit::TestCase
  def setup
    @fib = Fib.new
  end

  def test_fibgen
    r = @fib.general
    assert_equal(((1.0 + Math::sqrt(5))/2.0).round(10),r)
  end

  def test_fib1
    r = @fib.fib 1
    assert_equal(1, r)
  end

  def test_fib3
    r = @fib.fib 3
    assert_equal(2, r)
  end
  
  def test_fib6
    r = @fib.fib 6
    assert_equal(8, r)
  end

  def test_fibnone
    r = @fib.fib
    assert_equal(false, r)
  end

  def test_fibminus
    r = @fib.fib(-1)
    assert_equal(false, r)
  end

  def teardown
  end
end
