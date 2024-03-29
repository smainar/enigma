class Offset
  attr_reader :date

  def initialize(date = nil)
    @date = date
  end

  def todays_date
    Date.today.strftime('%d%m%y')
  end

  def offset_from_date
    (@date.to_i ** 2).to_s
  end

  def a_offset
    offset_from_date[-4].to_i
  end

  def b_offset
    offset_from_date[-3].to_i
  end

  def c_offset
    offset_from_date[-2].to_i
  end

  def d_offset
    offset_from_date[-1].to_i
  end

end
