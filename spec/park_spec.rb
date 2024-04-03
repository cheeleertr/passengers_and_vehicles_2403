require "./lib/passenger"
require "./lib/vehicle"
require "./lib/park"
require 'pry'

RSpec.describe do
  it "can initialize" do
    park = Park.new("Memorial", 10)

    expect(park).to be_instance_of(Park)
    expect(park.name).to eq("Memorial")
    expect(park.vehicles).to eq([])
    expect(park.passengers).to eq([])
    expect(park.revenue).to eq(0)
    expect(park.admission).to eq(10)
  end
  
  it "can add vehicles to park" do
    park = Park.new("Memorial", 10)

    expect(park.vehicles).to eq([])
    vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
    vehicle_2 = Vehicle.new("2020", "Toyota", "Camry")
    park.add_vehicle(vehicle_1)
    park.add_vehicle(vehicle_2)
    
    expect(park.vehicles).to eq([vehicle_1, vehicle_2])
    end

    it "can list all passengers in park" do
    park = Park.new("Memorial", 10)
    vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    jude = Passenger.new({"name" => "Jude", "age" => 20})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    vehicle_1.add_passenger(charlie)
    vehicle_1.add_passenger(jude)
    vehicle_1.add_passenger(taylor)

    park.add_vehicle(vehicle_1)

    expect(park.vehicles).to eq([vehicle_1])
    expect(park.passengers).to eq([charlie, jude, taylor])

    # expect(park.vehicles).to eq([])
    # expect(park.passengers).to eq([])
    end

    it "can collect revenue from adults" do
      park = Park.new("Memorial", 10)
      vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      jude = Passenger.new({"name" => "Jude", "age" => 20})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})
      vehicle_1.add_passenger(charlie)
      vehicle_1.add_passenger(jude)
      vehicle_1.add_passenger(taylor)
  
      park.add_vehicle(vehicle_1)
  
      expect(park.revenue).to eq(20)
    end
end