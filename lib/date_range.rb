
require 'pry'

module Hotel
  class DateRange
    
    attr_accessor :start_date, :end_date
    
    def initialize(start_date, end_date)
      @start_date = start_date
      @end_date = end_date
      # @nights = nights
      
      if start_date == nil || end_date == nil
        raise ArgumentError.new
      elsif end_date <= start_date
        raise ArgumentError.new 
      end
    end
    
    def nights
      nights = (end_date - start_date) - 1
    end
    
    def overlap?(other)
      return false
    end
    
    
    def include?(date)
      return false
    end
    
  end
end
