class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name,Rating, Restaurant)
    @name = name
    @Rating = Rating
    @Restaurant = Restaurant

    @@all << self 
  end

  def self.all
    @@all 
  end 
end
