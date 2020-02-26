class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select { |review| review.restaurant == self}
  end

  def customers
    customer_arr = self.reviews.map { |review| review.customer}
    customer_arr.uniq
  end

  def average_star_rating
    ratings_arr = self.reviews.map { |review| review.rating.to_f }
    ratings_arr.sum / ratings_arr.size
  end

end
