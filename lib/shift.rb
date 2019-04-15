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

end
