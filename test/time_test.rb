require 'date'
require_relative 'test_helper'
require_relative '../lib/time'

require 'pry'

describe "Date" do
  it "is an instance of Date" do
    # Arrange (conditions and inputs)
    # Act (act on the object or method under test)
    @stay = Date.new(1940/12/21)
    # Assert that the expected results have occurred)
    expect(@stay).must_be_kind_of Date
  end
  
  it "accurately calculates duration" do
    
    check_in = Date.parse("1940/12/21")
    check_out = Date.parse("1940/12/29")
    duration = (check_out - check_in)
    duration = duration.to_i
    
    expect(duration).must_equal 8
  end
  
end
