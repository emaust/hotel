
require_relative 'test_helper'
require_relative '../lib/time'
require_relative '../lib/service'
require_relative '../lib/reservation'


describe "Reservation class" do
  it "returns an instance of Reservation" do
    @reservation = Reservation.new(2018/12/20, 2018/12/26)
    expect(@reservation).must_be_kind_of Reservation
  end
  
  it "creates an instance of room number between 1..20" do
    @reservation = Reservation.new(2018/12/20, 2018/12/26)
    expect(@reservation.room).must_be_kind_of Integer
  end
  
  it "creates an instance of check_in and _out" do
    @reservation = Reservation.new(2018/12/20, 2018/12/26)
    expect(@reservation.check_in).must_equal 2018/12/20
    expect(@reservation.check_out).must_equal 2018/12/26
  end
end