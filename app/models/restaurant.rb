class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    all_customers = self.reviews.collect {|review| review.customer}
    all_customers.uniq
  end

  def average_star_rating
    star_ratings = self.reviews.collect {|review| review.rating}
    star_ratings.sum / star_ratings.length.to_f
  end
end
