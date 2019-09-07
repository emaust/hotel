require 'date'

class Time
  attr_accessor :check_in, :check_out, :duration, :stay
  
  def initialize
    @check_in = check_in
    @check_out = check_out
    @duration = duration
  end
  
  def reserve_time(date1, date2)
    check_in = Date._parse(date1)
    check_out = Date._parse(date2)
    @duration = check_out - check_in
  end
  
end