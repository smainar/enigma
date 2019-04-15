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

  def test_it_has_a_key
    assert_equal @key, @shift.key
  end

  def test_it_has_an_offset
    assert_equal @offset, @shift.offset
  end

  def test_it_can_sum_key_and_offset_to_calculate_the_shifts
    assert_equal 15, @shift.a_shift
    assert_equal 28, @shift.b_shift
    assert_equal 40, @shift.c_shift
  end

end
