


module Hotel
  class DateRange
    attr_accessor :start_date, :end_date
    
    def initialize(start_date, end_date)
      @start_date = Date.new(start_date)
      @end_date = Date.new(end_date)
      
      if valid_date?(start_date) == false || valid_date?(end_date) == false
        raise "Invalid date range"
      end
      
    end
    
    def overlap?(other)
      return false
    end
    
    def include?(date)
      return false
    end
    
    def nights
      return 3
    end
  end
end
