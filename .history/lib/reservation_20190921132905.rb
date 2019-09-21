<<<<<<< HEAD
require_relative '../lib/time'
require_relative '../lib/service'



class Reservation
  attr_accessor :room, :price, :duration, :cost, :check_in, :check_out, :reservations
  
  
  def initialize(check_in, check_out)
    @check_in = check_in
    @check_out = check_out
    @duration = Dates.new.reserve_time(check_in, check_out)
    @cost = Service.new.room_cost(@duration)
    @room = rand(1..20)
  end
  
  
=======
module Hotel
  class Reservation
    # Feel free to change this method signature as needed. Make sure to update the tests!
    def initialize(start_date, end_date, room)
    end

    def cost
      return 3
    end
  end
>>>>>>> origin/design-scaffolding
end
