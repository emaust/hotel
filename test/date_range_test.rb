require_relative 'test_helper'
require_relative '../lib/date_range'
require_relative 'test_helper'

describe "intialize DateRange" do
  it "creates an instance of start_date and end date" do
    hotel = Hotel::DateRange.new("2007/12/20", "2007/12/26")
    expect(hotel.start_date).must_be_instance_of Date
    expect(hotel.end_date).must_be_instance_of Date 
  end
  
end