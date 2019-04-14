class Offset
  attr_reader :date

  def initialize(date)
    @date = date
  end

  def todays_date
    Date.today.strftime('%d%m%y')
  end

end
