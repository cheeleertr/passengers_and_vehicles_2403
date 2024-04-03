class Patron
  attr_reader :parks,
              :attendees,
              :adults,
              :minors

  def initialize
    @parks = []
    @attendees = []
    @adults = []
    @minors = []
  end

  def add_park(park)
    @parks << park
    
  end
end