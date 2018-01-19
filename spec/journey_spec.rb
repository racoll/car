require "journey"
require "car"

RSpec.describe Journey do

  # let(:start_location) { double :start_location }
  # let(:finish_location) { double :finish_location }

  subject(:journey) { described_class.new }
  subject(:car) { Car.new }

  it "exists" do
    expect(journey).to be_an_instance_of Journey
  end

  it "initializes as having no journey details" do
    expect(journey.round_trip).to eq []
  end

  it "collates the start location and end location" do
    car.fill_up
    car.drive("london")
    car.drive("oxford")
    expect(journey.compile_journey).to eq ["london", "oxford"]
  end
end