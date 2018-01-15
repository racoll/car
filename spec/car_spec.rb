require "car"

RSpec.describe Car do

  let(:location) { double :location }

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

    it "has an empty list of stations by default" do
      expect(car.journeys).to be_empty
    end

    describe "#fill_up" do

      it "can be filled up with petrol" do
        car.fill_up
        expect(car.check_fuel).to eq (1)
        expect(car.tank_contents).to eq (1)
      end

      it "raises an error if fuel is topped up on a full tank" do
        car.fill_up
        expect { car.fill_up}.to raise_error "Tank is full!"
      end


    end


    describe "#drive" do

      it "can be driven" do
        car.fill_up
        car.drive(location)
        expect(car.in_journey?).to eq true
      end

      it "can drive to a location and store that" do
        car.fill_up
        car.drive(location)
        expect(car.journeys).to eq [location]
      end

      it "raises an error if car has no fuel" do
        expect { car.drive(location) }.to raise_error "Car has no fuel!"
      end

      it "reduces the fuel contents by a quarter" do
        car.fill_up
        car.drive(location)
        expect(car.tank_contents).to eq 0.75
      end
    end

end
