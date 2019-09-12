require_relative 'test_helper'
require_relative '../lib/service'
require_relative '../lib/time'

describe "Room system" do
  it "lists the rooms within the hotel" do
    expect(Service.new.rooms).must_be_kind_of Array
  end
  
  it "accurately returns a room number from room array" do
    expect(Service.new.rooms[4]).must_equal 5 
  end
  
  it "creates reservations array" do
    expect(Service.new.reservations).must_be_kind_of Array
  end
  
  it "creates an accurate instance of cost" do
    @duration = Dates.new.reserve_time("2010/12/20", "2010/12/26")
    @cost = Service.new.room_cost(@duration)
    expect(@cost).must_equal 1000 
  end
  
  it "pushes a reservation into array" do
    reservation = Reservation.new("2000/10/10","2000/10/15")
    Service.new.add_reservation(reservation)
    expect(@reservations.length).must_equal 1
  end
end

# end