require "./lib/passenger"
require "./lib/vehicle"
require "./lib/park"
require "./lib/patron"
require 'pry'

RSpec.describe do
  it "can list patrons" do
    patron = Patron.new
    park = Park.new("Memorial", 10)
    patron.add_park(park)

    expect(patron.parks).to eq([park])
  end
end