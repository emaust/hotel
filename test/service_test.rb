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
  
end

describe "makes reservation" do
  it "accurately calculates cost" do
    expect(Service.new.reserve_room(6)).must_equal 1200 
  end
end
# describe "Service class" do  
#   it "creates a new passenger instance" do
#     #     # Arrange (conditions and inputs)
#     #     # Act (act on the object or method under test)
#     # @reservation = Service.new(2018/10/10, 2018/10/20, 10, 2000) 

#     Service.new(2010/10/10, 2010/10/14, )

#     # expect(Service.price).must_equal 200
