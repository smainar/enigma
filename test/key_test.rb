require './test/test_helper'

class KeyTest < Minitest::Test
  def setup
    @key = Key.new("12345")
  end

  def test_it_exists
    assert_instance_of Key, @key
  end

  def test_it_has_key
    assert_equal "12345", @key.key
  end

end
