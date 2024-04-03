require "./lib/passenger"
require 'pry'

RSpec.describe do
    it "can initialize" do
      passenger = Passenger.new
    expect(passenger).to be_instance_of(Passenger)
    end
  end