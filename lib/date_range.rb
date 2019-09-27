
require 'pry'

module Hotel
  class DateRange
    
    attr_accessor :start_date, :end_date
    
    def initialize(start_date, end_date)
      @start_date = start_date
      @end_date = end_date
      
      
      if start_date == nil || end_date == nil
        raise ArgumentError.new
      elsif end_date <= start_date
        raise ArgumentError.new 
      end
    end
    
    def nights
      nights = (end_date - start_date) - 1
      nights = nights.to_i
    end
    
    
    
    def overlap?(reservation)
      if reservation.end_date > @start_date && reservation.end_date < @end_date
        return true
      elsif reservation.start_date < @start_date && reservation.end_date > @end_date
        return true
      elsif reservation.start_date == @start_date
        return true
      else
        return false
      end 
    end
    
    def include?(date)
      return false
    end
    
  end
end
