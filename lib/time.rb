require 'date'

class Time
  attr_reader :check_in, :check_out, :duration
  
  def initialize
    @check_in = check_in
    @check_out = check_out
    @duration = duration
  end
  
  def reserve_time(date1, date2)
    check_in = Date._parse(date1)
    check_out = Date._parse(date2)
    duration = check_out - check_in
    @duration = duration.to_i
  end
  
end