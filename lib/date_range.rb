


module Hotel
  class DateRange
    
    attr_accessor :start_date, :end_date, :nights
    
    def initialize(start_date, end_date)
      @start_date = start_date
      @end_date = end_date
      @nights = end_date - start_date
      # if @start_date == nil || @end_date == nil
      #   raise ArgumentError.new "Invalid date - no date entered"
      # elsif @end_date >= @start_date
      #   raise ArgumentError.new "Invalid date - end date cannot be same day or prior to start date"
      # end
      
    end
    
    def overlap?(other)
      return false
    end
    
    
    def include?(date)
      return false
    end
    
  end
end
