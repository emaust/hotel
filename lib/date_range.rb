module Hotel
  class DateRange
    attr_accessor :start_date, :end_date
    
    def initialize(start_date, end_date)
      check_in = Date.parse(start_date)
      check_out = Date.parse(end_date)
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
