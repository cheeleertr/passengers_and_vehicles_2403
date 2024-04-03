require "./lib/passenger"
require "./lib/vehicle"
require 'pry'

RSpec.describe do
    it "can initialize" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      expect(vehicle.year).to eq("2001")
      expect(vehicle.make).to eq("Honda")
      expect(vehicle.model).to eq("Civic")
    end
    
    # it "can check if it's speeding" do
    #   vehicle = Vehicle.new("2001", "Honda", "Civic")

    #   expect(vehicle.speeding?).to eq(false)
    #   expect(vehicle.speed).to eq(false)
    #   expect(vehicle.speed).to eq()
    #   expect(vehicle.speeding?).to eq(true)
    # end

    # it "can add passengers" do
    #   vehicle = Vehicle.new("2001", "Honda", "Civic")

    #   expect(vehicle.passengers).to eq([])
    #   charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    #   jude = Passenger.new({"name" => "Jude", "age" => 20})
    #   taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    #   vehicle.add_passenger(charlie)
    #   vehicle.add_passenger(jude)
    #   vehicle.add_passenger(taylor)

    #   expect(vehicle.passengers).to eq([charlie, jude, taylor])
    #   expect(vehicle.num_adults).to eq(3)
    # end
  end