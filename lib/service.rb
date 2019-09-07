require 'date'
require_relative '../lib/reservation'
require_relative '../lib/time'

class Service
  
  attr_reader :rooms
  
  def initialize(rooms:[])
    @rooms = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
    # @cost = cost
    # @reservation = reservation
    
  end
  
  # def cost(duration)
  #   @cost = duration * price
  # end
  
  
  
  #   def reserve_room(stay_length)
  #     reserved = 
  #   end
  
end