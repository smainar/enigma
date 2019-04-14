class Key
  attr_reader :key

  def initialize(key)
    @key = key
  end

  def a_key
    (@key[0] + @key[1]).to_i
  end

end
