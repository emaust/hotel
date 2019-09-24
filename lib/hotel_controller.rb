require_relative 'date_range'
require_relative 'reservation'

module Hotel
  class HotelController 
    
    attr_reader :rooms
    
    # Wave 1
    def initialize
      @rooms = [(1..20)]
    end
    
    def reserve_room(start_date, end_date)
      range = Hotel::DateRange.new(start_date, end_date)
      start_date = range.start_date
      end_date = range.end_date
      nights = range.nights
      return Reservation.new(start_date, end_date, nights, nil)
    end
    
    def reservations(date)
      return []
    end
    
    # Wave 2
    def available_rooms(start_date, end_date)
      # start_date and end_date should be instances of class Date
      return []
    end
  end
end
