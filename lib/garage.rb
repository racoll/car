require_relative "car"

class Garage

  attr_reader :occupants

  def initialize
    @occupants = []
  end

  def accept(car)
    fail "Garage full!" if @occupants == [car]
    @in_journey = false
    @occupants << car
  end

  def release_car
    fail "No car in garage!" if @occupants.empty?
    @in_journey = true
    @occupants.pop
  end

  # private

    # attr_reader :occupants

    # def full?
    #   @occupants.count >= 1
    # end

    # def empty?
    #   @occupants.count = 0
    # end

end
