require_relative '../lib/time'
require_relative '../lib/service'



class Reservation
  attr_reader :room, :price, :duration, :cost, :check_in, :check_out
  attr_writer :reservations
  
  
  def initialize(check_in, check_out)
    @check_in = check_in
    @check_out = check_out
    @duration = Dates.new.reserve_time(check_in, check_out)
    @cost = Service.new.room_cost(@duration)
    @room = rand(1..20)
  end
  
  
  
  
end
