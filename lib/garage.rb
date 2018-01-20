require_relative "car"

class Garage

  attr_reader :occupants, :car_problems

  def initialize
    @occupants = []
    @car_problems = ["A OK!", "Puncture", "Blown gasket"]
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

  def health_check
    @car_problems.sample
  end

  def fix(car)
    "Car fixed!"
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
