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

end
