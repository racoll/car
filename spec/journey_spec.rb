require "journey"
require "car"

RSpec.describe Journey do

  let(:start_location) { double :start_location }
  let(:finish_location) { double :finish_location }

  subject(:journey) { described_class.new }
  subject(:car) { Car.new }

  it "exists" do
    expect(journey).to be_an_instance_of Journey
  end

  it "collates the start location and end location" do
    car.fill_up
    car.drive(start_location)
    car.drive(finish_location)
    expect(journey.complete_trip).to eq {[start_location] [finish_location]}
  end
end
