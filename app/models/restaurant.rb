class Restaurant
  attr_reader :name

  @@all = []

  def self.all
      @@all
  end

  def initialize(name)
      @name = name
      @@all << self
  end

  def reviews
      Review.all.find_all { |rev| rev.restaurant == self }
  end

  def customers
      self.reviews.map { |rev| rev.customer }.uniq
  end

  def average_star_rating
    ratings = self.reviews.map { |rev| rev.rating }
    1.0 * ratings.sum / ratings.length
  end

end