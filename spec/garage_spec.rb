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
      expect(garage.occupants).to eq []
    end

    it "can accept a car" do
      expect(garage.accept(car)).to eq [car]
    end

  end

end
