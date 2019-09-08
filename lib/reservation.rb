require_relative '../lib/time'
require_relative '../lib/service'



class Reservation
  attr_reader :room, :price, :duration, :cost, :check_in, :check_out
  attr_writer :reservations
  
  
  def initialize(check_in, check_out)
    @duration = duration
    @cost = cost
    @room = room
    @check_in = check_in
    @check_out = check_out
    @room = rand(1..20)
  end
  
  
  
  
end
