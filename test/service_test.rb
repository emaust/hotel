require_relative 'test_helper'
require_relative '../lib/service'
require_relative '../lib/time'

describe "Room functions" do
  it "lists the rooms within the hotel" do
    
    reservation = Service.new
    expect(reservation.rooms).must_be_kind_of Array
  end
  
  it "accurately returns a room number from array" do
    reservation = Service.new
    expect(reservation.rooms[4]).must_equal 5 
  end
  
  it "creates an accurate instance of duration" do
    @duration = Dates.new.reserve_time("2010/12/20", "2010/12/26")
    expect(@duration).must_equal 6
  end
  
  it "creates an accurate instance of cost" do
    @duration = Dates.new.reserve_time("2010/12/20", "2010/12/26")
    @cost = Service.new.room_cost(@duration)
    expect(@cost).must_equal 1000 
  end
  
  
end