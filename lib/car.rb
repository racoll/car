class Car

  def initialize
    @engine_on = false
    @tank_contents = 0
  end

  def running?
    @engine_on
  end

  def start_engine
    @engine_on = true
  end

  def check_fuel
    @tank_contents
  end


end
