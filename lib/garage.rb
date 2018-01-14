require_relative "car"

class Garage

  attr_reader :occupants

  def initialize
    @occupants = []
  end

  def accept(car)
    @occupants << car
    @in_journey = false
  end

  def release_car
    @occupants.pop
  end

end
