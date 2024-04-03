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
end