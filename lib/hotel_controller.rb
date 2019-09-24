require_relative 'date_range'
require_relative 'reservation'

module Hotel
  class HotelController 
    
    attr_reader :rooms
    # does this need to be accessor? idk, look it up
    attr_accessor :reservation_list
    
    # Wave 1
    def initialize
      @rooms = [(1..20)]
      @reservation_list = []
    end
    
    def reserve_room(start_date, end_date)      
      
      range = Hotel::DateRange.new(start_date, end_date)
      start_date = range.start_date
      end_date = range.end_date
      nights = range.nights
      
      reservation = Reservation.new(start_date, end_date, nights, nil)
      return reservation
      @reservation_list << reservation
      
    end
    
    # possible trickery, reassess when more reservations are generated?
    def reservations(date)
      reservation_list.each do |index, date|
        if reservation_list[index].include?(date)
          print reservation_list[index]
        end 
      end
    end
    
    # Wave 2
    def available_rooms(start_date, end_date)
      # start_date and end_date should be instances of class Date
      return []
    end
  end
end
