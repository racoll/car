require "garage"
require "car"

RSpec.describe Garage do

  let(:car_problems) { double :car_problems }

  subject(:garage) { described_class.new }
  subject(:car) { Car.new }


    it "exists" do
      expect(garage).to be_an_instance_of Garage
    end

    it "initializes as empty" do
      expect(garage.occupants.count).to eq 0
    end

    it "can fix a car" do
      expect(garage.fix(car)).to eq "Car fixed!"
    end

    describe "#accept" do

      it "can accept a car" do
        garage.accept(car)
        expect(car.in_journey?).to eq false
        expect(garage.occupants).to eq [car]
      end

      it "raises an error if a car is already present" do
        garage.accept(car)
        expect { garage.accept(car) }.to raise_error "Garage full!"
      end

    end


    describe "#release_car" do

      it "can release a car" do
        garage.accept(car)
        garage.release_car
        # expect(car.in_journey?).to eq true
        expect(garage.occupants.count).to eq 0
      end

      it "raises an error if no car was in the garage" do
        expect { garage.release_car }.to raise_error "No car in garage!"
      end

    end

    describe "#health_check" do

      it "checks the condition of the car returning a random report" do
        # garage.health_check
        expect(["A OK!", "Puncture", "Blown gasket"]).to include(garage.health_check)
      end

    end


end
