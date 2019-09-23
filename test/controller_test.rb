require_relative '../lib/hotel_controller'
require_relative '../date_range'
require_relative 'test_helper'



describe "Hotel Controller" do
  it "creates a list of rooms" do
    hotel = Hotel::HotelController.new
    expect(hotel.rooms).must_equal 1..20
  end
end
