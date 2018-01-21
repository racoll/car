require_relative "car"

class Journey

  attr_reader :round_trip
  attr_accessor :start_location, :finish_location

  def initialize
    @round_trip = []
  end

  def compile_journey
    @round_trip << @start_points
    @round_trip << @end_points
  end




end
