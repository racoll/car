require "car"

RSpec.describe Car do

  let(:start_location) { double :start_location }
  let(:finish_location) { double :finish_location }

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

    it "has an empty list of start points by default" do
      expect(car.start_points).to be_empty
    end

    it "has an empty list of end points by default" do
      expect(car.end_points).to be_empty
    end

    describe "#fill_up" do

      it "can be filled up with petrol" do
        car.fill_up
        expect(car.check_fuel).to eq 1
        expect(car.tank_contents).to eq 1
      end

      it "raises an error if fuel is topped up on a full tank" do
        car.fill_up
        expect { car.fill_up}.to raise_error "Tank is full!"
      end


    end

    describe "#stop" do

      it "can stop" do
        car.fill_up
        car.drive(start_location)
        car.stop(finish_location)
        expect(car.in_journey).to eq false
      end

      it "can drive to a location and store that" do
        car.fill_up
        car.drive(start_location)
        car.stop(finish_location)
        expect(car.end_points).to eq [finish_location]
      end

      it "accumulates mileage when it completes its journey" do
        car.fill_up
        car.drive(start_location)
        car.stop(finish_location)
        expect(car.mileage).to eq 10
      end
    end


    describe "#drive" do

      it "can be driven" do
        car.fill_up
        car.drive(start_location)
        expect(car.in_journey?).to eq true
      end

      it "can drive from a location and store that" do
        car.fill_up
        car.drive(start_location)
        expect(car.start_points).to eq [start_location]
      end


      it "raises an error if car has no fuel" do
        expect { car.drive(start_location) }.to raise_error "Car has no fuel!"
      end

      it "reduces the fuel contents by a quarter" do
        car.fill_up
        car.drive(start_location)
        expect(car.tank_contents).to eq 0.75
      end
    end

end
