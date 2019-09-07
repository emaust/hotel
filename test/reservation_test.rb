
require_relative 'test_helper'
require_relative '../lib/time'
require_relative '../lib/service'
require_relative '../lib/reservation'


describe "Reservation class" do
  it "creates instance of reservation" do
    @reservation = Reservation.new(2018/12/20, 2018/12/25) 
    expect(@reservation).must_be_kind_of Reservation
  end
  
  it "returns room for reservation" do
    expect(Reservation.new(2018/12/20, 2018/12/25).room).must_be_kind_of Integer
  end
  
  # it "returns list of reservations for given date"
  #   expect(Reservation.find(2018/12/20)
end