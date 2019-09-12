require 'date'
require_relative '../lib/reservation'
require_relative '../lib/time'

class Service
  
  attr_accessor :reservation, :cost, :reservations, :rooms, :price, :duration
  
  def initialize
    @rooms = (1..20).to_a
    @cost = cost
    @price = 200
    @reservations = []
  end
  
  
  def room_cost(duration)
    @cost = (duration - 1) * price 
  end
  
  def add_reservation(reservation)
    @reservations << reservation
  end
  
  
  # make new instance of reservation
  # store that instance of reservation in an array
  # access the information in the array by calling the instance variable at that index
  
  
  
end
