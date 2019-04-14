require './test/test_helper'

class OffsetTest < Minitest::Test
  def setup
    @offset = Offset.new("041419")
  end

  def test_it_exists
    assert_instance_of Offset, @offset
  end

  def test_it_has_a_date
    assert_equal "041419", @offset.date
  end

  def test_it_can_create_todays_date
    assert_equal 6, @offset.todays_date.length
  end

  def test_it_can_calculate_the_offset_from_the_date
    assert_equal "1715533561", @offset.offset_from_date
  end

  def test_it_returns_offset_from_date_for_a_to_d
   assert_equal 3, @offset.a_offset
  end

end
