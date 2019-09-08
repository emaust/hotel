require 'date'
require_relative '../lib/reservation'
require_relative '../lib/service'

class Dates
  attr_reader :check_in, :check_out, :duration
  
  def initialize
    @check_in = check_in
    @check_out = check_out
    @duration = duration
  end
  
  def reserve_time(date1, date2)
    check_in = Date.parse(date1)
    check_out = Date.parse(date2)
    duration = check_out - check_in
    @duration = duration.to_i
  end
  
end