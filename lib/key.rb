class Key
  attr_reader :key

  def initialize(key = nil)
    @key = key
  end

  def a_key
    @key[0..1].to_i
  end

  def b_key
    @key[1..2].to_i
  end

  def c_key
    @key[2..3].to_i
  end

  def d_key
    @key[3..4].to_i
  end

  def random_key
    Random.rand(100000).to_s.rjust(5, "0")
  end

end
