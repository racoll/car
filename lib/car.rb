class Car

  def initialize
    @engine_on = false
  end

  def running?
    @engine_on
  end

  def start_engine
    @engine_on = true
  end

end
