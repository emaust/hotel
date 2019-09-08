
require_relative 'test_helper'
require_relative '../lib/time'
require_relative '../lib/service'
require_relative '../lib/reservation'


describe "Reservation class" do
  it "returns an instance of Reservation" do
    @reservation = Reservation.new("2018/12/20", "2018/12/26")
    expect(@reservation).must_be_kind_of Reservation
  end
  
  it "creates an instance of check_in" do
    @reservation = Reservation.new("2018/12/20", "2018/12/26")
    expect(@reservation.check_in).must_equal "2018/12/20"
  end
  
  it "creates an instance of check_out" do
    @reservation = Reservation.new("2018/12/20", "2018/12/26")
    expect(@reservation.check_out).must_equal "2018/12/26"
  end
  
  it "creates a reservation with correct duration" do
    reservation = Reservation.new("2000/10/10","2000/10/15")
    expect(reservation.duration).must_equal 5
  end
  
  it "creates a reservation with correct cost" do
    reservation = Reservation.new("2000/10/10","2000/10/15")
    expect(reservation.cost).must_equal 800
  end
  
  it "assignes a room number" do
    reservation = Reservation.new("2000/10/10","2000/10/15")
    expect(reservation.room).must_be_kind_of Integer
  end
end