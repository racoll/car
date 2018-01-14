class Car

  attr_reader :tank_contents
  
  def initialize
    @engine_on = false
    @tank_contents = 0
    @in_motion = false
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

  def fill_up
    @tank_contents += 1
  end

  def in_motion?
    @in_motion
  end

  def drive
    @in_motion = true
  end





end
