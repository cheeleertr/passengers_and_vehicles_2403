class Passenger
  attr_reader :name, :age

  def initialize(passenger)
    @name = passenger["name"]
    @age = passenger["age"]
    @drive = false
  end

  def adult?
    @age >= 18
  end

  def drive
    @drive = true
  end
  def driver?
    @drive
  end
end