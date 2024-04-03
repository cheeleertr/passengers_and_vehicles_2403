require "./lib/passenger"
require 'pry'

RSpec.describe do
  it "can initialize" do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})

    expect(charlie).to be_instance_of(Passenger)
    expect(taylor).to be_instance_of(Passenger)
    expect(charlie.name).to eq("Charlie")
    expect(charlie.age).to eq(18)
    expect(charlie.adult?).to eq(true)
    expect(taylor.adult?).to eq(false)
    expect(charlie.driver?).to eq(false)
    expect(charlie.drive).to eq(true)
    expect(charlie.driver?).to eq(true)
  end
end