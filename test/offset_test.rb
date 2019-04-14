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

end
