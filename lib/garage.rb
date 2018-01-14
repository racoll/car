require_relative "car"

class Garage

  attr_reader :occupants

  def initialize
    @occupants = []
  end

  def accept(car)
    @occupants << car
  end

end
