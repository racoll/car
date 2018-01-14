require "car"

RSpec.describe Car do

  subject(:car) { described_class.new }

  describe "car" do

    it "exists" do
      expect(car).to be_an_instance_of Car
    end

    it "can be started" do
      car.start_engine
      expect(car.running?).to eq true
    end

    it "initializes with the engine off" do
      expect(car.running?).to eq false
    end

    it "initializes with an empty tank of fuel" do
      expect(car.check_fuel).to eq (0)
    end

  end

end
