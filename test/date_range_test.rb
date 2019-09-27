require_relative "test_helper"

describe Hotel::DateRange do
  describe "constructor" do
    it "Can be initialized with two dates" do
      start_date = Date.new(2017, 01, 01)
      end_date = start_date + 3
      
      range = Hotel::DateRange.new(start_date, end_date)
      
      expect(range.start_date).must_equal start_date
      expect(range.end_date).must_equal end_date
    end
    
    it "is an an error for negative-length ranges" do
      start_date = Date.new(2010, 12, 20)
      end_date = Date.new(2010, 12, 19)
      
      expect{Hotel::DateRange.new(start_date, end_date)}.must_raise ArgumentError
    end
    
    it "is an error to create a 0-length range" do
      start_date = Date.new(2010, 12, 20)
      end_date = Date.new(2010, 12, 20)
      
      expect{Hotel::DateRange.new(start_date, end_date)}.must_raise ArgumentError
    end
  end
  
  describe "overlap?" do
    before do
      start_date = Date.new(2017, 01, 10)
      end_date = start_date + 3
      
      @range = Hotel::DateRange.new(start_date, end_date)
    end
    
    it "returns true for the same range" do
      start_date = @range.start_date
      end_date = @range.end_date
      test_range = Hotel::DateRange.new(start_date, end_date)
      
      expect(@range.overlap?(test_range)).must_equal true
    end
    
    it "returns true for a contained range" do
      start_date = @range.start_date + 1
      end_date = @range.end_date - 1
      test_range = Hotel::DateRange.new(start_date, end_date)
      
      expect(@range.overlap?(test_range)).must_equal true
    end
    
    it "returns true for a range that overlaps in front" do
      start_date = Date.new(2017, 01, 8)
      end_date = @range.end_date - 2
      test_range = Hotel::DateRange.new(start_date, end_date)
      
      expect(@range.overlap?(test_range)).must_equal true
    end
    
    it "returns true for a range that overlaps in the back" do
      start_date = Date.new(2017, 01, 8)
      end_date = @range.end_date - 2
      test_range = Hotel::DateRange.new(start_date, end_date)
      
      expect(@range.overlap?(test_range)).must_equal true
    end
    
    it "returns true for a containing range" do
      start_date = Date.new(2017, 01, 9)
      end_date = @range.end_date + 2
      test_range = Hotel::DateRange.new(start_date, end_date)
      
      expect(@range.overlap?(test_range)).must_equal true
    end
    
    it "returns false for a range starting on the end_date date" do
      start_date = Date.new(2017, 01, 11)
      end_date = @range.end_date
      test_range = Hotel::DateRange.new(start_date, end_date)
      
      expect(@range.overlap?(test_range)).must_equal false
    end
    
    it "returns false for a range ending on the start_date date" do
      start_date = Date.new(2017, 01, 05)
      end_date = @range.start_date
      test_range = Hotel::DateRange.new(start_date, end_date)
      
      expect(@range.overlap?(test_range)).must_equal false
    end
    
    it "returns false for a range completely before" do
      start_date = Date.new(2016, 01, 01)
      end_date = @range.start_date
      test_range = Hotel::DateRange.new(start_date, end_date)
      
      expect(@range.overlap?(test_range)).must_equal false
    end
    
    it "returns false for a date completely after" do
      start_date = Date.new(2016, 06, 05)
      end_date = @range.start_date
      test_range = Hotel::DateRange.new(start_date, end_date)
      
      expect(@range.overlap?(test_range)).must_equal false
    end
  end
  
  xdescribe "include?" do
    it "returns false if the date is clearly out" do
    end
    
    it "returns true for dates in the range" do
    end
    
    it "returns false for the end_date date" do
    end
  end
  
  xdescribe "nights" do
    it "returns the correct number of nights" do
    end
  end
end
