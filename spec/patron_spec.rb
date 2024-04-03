require "./lib/passenger"
require "./lib/vehicle"
require "./lib/park"
require "./lib/patron"
require 'pry'

RSpec.describe do
  it "can add parks" do
    patron = Patron.new
    park = Park.new("Memorial", 10)
    patron.add_park(park)

    expect(patron.parks).to eq([park])
  end
  it "can list attendees" do
    patron = Patron.new
    park = Park.new("Memorial", 10)
    vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    jude = Passenger.new({"name" => "Jude", "age" => 20})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    vehicle_1.add_passenger(charlie)
    vehicle_1.add_passenger(jude)
    vehicle_1.add_passenger(taylor)
    park.add_vehicle(vehicle_1)
    patron.add_park(park)

    expect(patron.attendees).to eq([charlie, jude, taylor])
  end

end