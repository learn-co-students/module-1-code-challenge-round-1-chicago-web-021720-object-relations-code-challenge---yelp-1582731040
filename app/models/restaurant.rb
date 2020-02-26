class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select {|review_instance| review_instance.restaurant == self}
  end

  def customers
    self.reviews.map {|review_instance| review_instance.customer}.uniq
  end

  def average_star_rating
    sum = self.reviews.reduce(0) {|sum, review_instance| sum += review_instance.rating.to_f}
    result = sum / self.reviews.count
  end

end
