require_relative 'date_range'


module Hotel
  class Reservation
    
    attr_reader :room
    # Feel free to change this method signature as needed. Make sure to update the tests!
    def initialize(start_date, end_date, nights, room)
      @room = room
      @nights = nights
    end
    
    def cost 
      price = 200
      cost = price * @nights
    end
  end
end
