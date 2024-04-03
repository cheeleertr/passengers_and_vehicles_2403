class Park
  attr_reader :name,
              :admission,
              :vehicles,
              :passengers,
              :revenue

  def initialize(name, admission)
    @name = name
    @admission = admission
    @vehicles = []
    @passengers = []
    @revenue = 0
  end

  def add_vehicle(vehicle)
    @vehicles << vehicle
    vehicle.passengers.map do |passenger|
      @passengers << passenger
    end
  end
end