class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end
  def reviews
    Review.all.select{|review| review.restaurant == self}
  end

  def customers
    self.reviews.map{ |review| review.customer }
  end

  def average_star_rating
    total_restaurants = self.reviews.reduce(0){|sum,review| sum + review.rating}
    number_of_restaurants = self.reviews.length
    total_restaurants/number_of_restaurants
  end

end
