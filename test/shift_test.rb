require './test/test_helper'

class ShiftTest < Minitest::Test
  def setup
    @key = Key.new ("12345")
    @offset = Offset.new("041419")
    @shift = Shift.new(@key, @offset)
  end

  def test_it_exists
    assert_instance_of Shift, @shift
  end

end
