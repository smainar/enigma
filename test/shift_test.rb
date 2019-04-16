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
    assert_equal 46, @shift.d_shift
  end

  def test_it_can_return_hash_of_final_shifts
    expected = {
        :A => 15,
        :B => 28,
        :C => 40,
        :D => 46
    }

    assert_equal expected, @shift.get_final_shifts
  end

  def test_it_can_return_standard_lowercase_alphabet_of_27_characters
    expected = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"," "]

    assert_equal expected, @shift.character_set
  end

  def test_it_can_encrypt_a_message
    key = Key.new ("02715")
    offset = Offset.new("040895")
    shift = Shift.new(key, offset)

    assert_equal "keder,sprrdx!", shift.get_encryption("hello, world!")
  end

  def test_it_can_decrypt_a_message
    key = Key.new ("02715")
    offset = Offset.new("040895")
    shift = Shift.new(key, offset)

    assert_equal "hello, world!", shift.get_decryption("keder,sprrdx!")
  end

end
