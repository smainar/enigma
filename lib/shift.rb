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

  def encrypt(message)
    split_characters = message.downcase.chars
    total_shifts = get_final_shifts
    encrypted_message = []
    split_characters.each_with_index do |character, index|
      if character_set.include?(character)
        encrypted_message << character_set.index(character) + total_shifts.values[index % 4]
      else
        encrypted_message << character
      end
    end
    index_array = encrypted_message.map {|shifted_index| shifted_index % 27}
    index_array.map {|new_index| character_set[new_index]}.join
  end

end
