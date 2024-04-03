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

end