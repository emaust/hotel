require_relative 'date_range'
require_relative 'reservation'
require 'pry'

module Hotel
  class HotelController 
    
    # does this need to be accessor? idk, look it up
    
    attr_accessor :reservation_list, :rooms, :reservation
    
    # Wave 1
    def initialize
      @rooms = (1..20).to_a
      @reservation_list = []
      @reservation = reservation
    end
    
    # may be complete nonsense, need to test with more than one occurence, but will return first index for empty list
    def reserve_room(start_date, end_date)      
      
      current_room = ()
      if @reservation_list.empty? == true
        current_room = rooms.shift
      elsif @reservation_list.empty? == false
        @reservation_list.include?(start_date)
        count = @reservation_list.count(start_date)
        current_room = rooms[count - 1]
      end
      
      room = current_room
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
      range = Hotel::DateRange.new(start_date, end_date)
      start_date = range.start_date
      end_date = range.end_date
      nights = range.nights.to_i
      check = 1
      until check == nights do
        @reservation_list.each do
          @reservation.include?(start_date)
          rooms.delete(@reservation.room)
        end
        check += 1
      end
      return rooms
    end 
  end
end
# if the reservation list includes that date
# check for room numbers for that date
# delete that room number from a generic list of rooms
# iterate to next date (nights)


# start_date and end_date should be instances of class Date

