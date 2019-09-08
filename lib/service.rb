require 'date'
require_relative '../lib/reservation'
require_relative '../lib/time'

class Service
  
  attr_reader :rooms, :price, :check_in, :check_out
  attr_accessor :reservation, :cost, :passenger
  
  def initialize(check_in, check_out)
    @rooms = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
    @cost = cost
    @price = 200
    @check_in = check_in
    @check_out = check_out
  end
  
  
  
  def room_cost(duration)
    @cost = duration * price 
  end
end

