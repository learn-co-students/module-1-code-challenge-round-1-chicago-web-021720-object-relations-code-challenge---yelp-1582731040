class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def review
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    array = self.review.map {|review| review.customer}
    array.uniq
  end

  def average_star_rating
    self.review.collect {|review| review.rating}
    #This was the last method I was working on, couldn't finish...
  end
end
