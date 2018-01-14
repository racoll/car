require "car"

RSpec.describe Car do

  subject(:car) { described_class.new }

  describe "car" do

    it "exists" do
      expect(car).to be_an_instance_of Car
    end

    # it "can be started" do
    #   expect(car.running?).to eq true
    # end

  end

end
