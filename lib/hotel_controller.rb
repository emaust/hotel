require_relative 'date_range'
require_relative 'reservation'
require 'pry'

module Hotel
  class HotelController 
    
    # does this need to be accessor? idk, look it up
    attr_reader :nights
    attr_accessor :reservation_list, :rooms
    
    # Wave 1
    def initialize
      @rooms = (1..20).to_a
      @reservation_list = []
    end
    
    # need to actually specify a room here
    def reserve_room(start_date, end_date)      
      
      room = rooms.shift
      range = Hotel::DateRange.new(start_date, end_date)
      start_date = range.start_date
      end_date = range.end_date
      nights = range.nights
      
      reservation = Reservation.new(start_date, end_date, nights, room)
      
      @reservation_list << reservation
      return reservation
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
