class Offset
  attr_reader :date

  def initialize(date)
    @date = date
  end

  def todays_date
    Date.today.strftime('%d%m%y')
  end

  def offset_from_date
    (@date.to_i ** 2).to_s
  end

end
