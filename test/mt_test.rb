require 'test_helper'

class MtTest < Test::Unit::TestCase
  def test_string
    assert ""
    assert false
    assert true
  end
  
  def test_pass
    assert true
  end
  
  def test_fail
    assert false
  end
end
