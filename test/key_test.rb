require './test/test_helper'

class KeyTest < Minitest::Test
  def setup
    @key = Key.new("12345")
  end

  def test_it_exists
    assert_instance_of Key, @key
  end
  
end
