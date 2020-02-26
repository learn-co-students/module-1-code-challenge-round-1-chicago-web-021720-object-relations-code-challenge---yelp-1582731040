class Customer
  attr_accessor :given_name, :family_name
  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
    @@all
  end

  def review
    Review.all.select {|review| review.customer == self}
  end

  def restaurants
    array = self.review.map {|review| review.restaurant}
    array.uniq
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    self.review.length
  end

  def self.find_by_name(name)
    x = self.all.select {|individual| individual.full_name == name}
    x.first
    #I tried using .find but it didn't work so to save time I just did this. I know its not what's expected but it works :)
  end

  def self.find_all_by_given_name(name)
    self.all.select {|individual| individual.given_name == name}
  end
end
