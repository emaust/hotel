require 'date'
require_relative 'test_helper'
require_relative '../lib/time'

require 'pry'

describe "Dates" do
  it "is an instance of Dates" do
    # Arrange (conditions and inputs)
    # Act (act on the object or method under test)
    @stay = Dates.new
    # Assert that the expected results have occurred)
    expect(@stay).must_be_kind_of Dates
  end
  
  it "accurately calculates duration" do
    duration = Dates.new.reserve_time("2010/11/10", "2010/11/18")
    expect(duration).must_equal 8
  end
  
end
