require "car"

RSpec.describe Car do

  subject(:car) { described_class.new }

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

    it "can be filled up with petrol" do
      car.fill_up
      expect(car.check_fuel).to eq (1)
      expect(car.tank_contents).to eq (1)
    end

    describe "#drive" do

      it "can be driven" do
        car.fill_up
        car.drive
        expect(car.in_journey?).to eq true
      end

      it "raises an error if car has no fuel" do
        expect { car.drive}.to raise_error "Car has no fuel!"
      end

      it "reduces the fuel contents by a quarter" do
        car.fill_up
        car.drive
        expect(car.tank_contents).to eq 0.75
      end
    end



end
