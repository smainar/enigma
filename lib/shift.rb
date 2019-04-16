class Shift
  attr_reader :key,
              :offset

  def initialize(key, offset)
    @key = key
    @offset = offset
  end

  def a_shift
    @key.a_key + @offset.a_offset
  end

  def b_shift
    @key.b_key + @offset.b_offset
  end

  def c_shift
    @key.c_key + @offset.c_offset
  end

  def d_shift
    @key.d_key + @offset.d_offset
  end

  def get_final_shifts
    final_shifts = Hash.new
    final_shifts[:A] = a_shift
    final_shifts[:B] = b_shift
    final_shifts[:C] = c_shift
    final_shifts[:D] = d_shift
    final_shifts
  end

  def character_set
    ("a".."z").to_a << " "
  end

  def get_encryption(message)
    split_characters = message.downcase.chars
    total_shifts = get_final_shifts
    encrypted_message = []
    split_characters.each_with_index do |character, index|
      if character_set.include?(character)
        letter_index = character_set.find_index(character)
        encrypted_message << character_set.rotate(total_shifts.values[index % 4])[letter_index]
      else
        encrypted_message << character
      end
    end
    encrypted_message.join
  end
