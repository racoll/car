require "garage"
require "car"

RSpec.describe Garage do

  subject(:garage) { described_class.new }
  subject(:car) { Car.new }

  describe "garage" do

    it "exists" do
      expect(garage).to be_an_instance_of Garage
    end

    it "initializes as empty" do
      expect(garage.occupants.count).to eq 0
    end

    it "can accept a car" do
      garage.accept(car)
      expect(garage.occupants).to eq [car]
      expect(car.in_journey?).to eq false
    end

    it "can release a car" do
      garage.accept(car)
      garage.release_car
      expect(garage.occupants.count).to eq 0
    end

  end

end
