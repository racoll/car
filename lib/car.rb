class Car

  MAXIMUM_FUEL_CONTENTS = 1
  MINIMUM_FUEL_CONTENTS = 0

  attr_reader :tank_contents, :journeys, :location
  attr_accessor :in_journey

  def initialize
    @engine_on = false
    @tank_contents = 0
    @in_journey = false
    @journeys = []
  end

  def running?
    @engine_on
  end

  def start_engine
    @engine_on = true
  end

  def check_fuel
    @tank_contents
  end
  # redundant

  def fill_up
    fail "Tank is full!" if @tank_contents == MAXIMUM_FUEL_CONTENTS
    @tank_contents += 1
  end

  def in_journey?
    @in_journey
  end
  # redundant

  def drive(location)
    fail "Car has no fuel!" if @tank_contents == MINIMUM_FUEL_CONTENTS
    @in_journey = true
    @tank_contents -= 0.25
    @journeys << location
  end


end
