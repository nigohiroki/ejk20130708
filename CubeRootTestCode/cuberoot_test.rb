require 'test/unit'
require './cuberoot'

class CubeRootTest < Test::Unit::TestCase
  def setup
    @cube = Cuberoot.new
  end
  
  def test_case(n=1)
    r = @cube.root n
    t = n**(1.0/3.0)
    assert_equal(t.round(10), r)
  end

  def test_loop
    for i in 1..200
      test_case(i)
    end
  end

  def test_cuberootnone
    r = @cube.root 
    assert_equal(false, r)
  end

  def test_cuberoot0
    r = @cube.root 0
    assert_equal(false, r)
  end

  def test_cuberootminus
    r = @cube.root(-1)
    assert_equal(false, r)
  end

  def teardown
  end

end
