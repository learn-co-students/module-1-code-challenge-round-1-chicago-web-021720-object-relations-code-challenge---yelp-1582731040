class Customer
  attr_accessor :given_name, :family_name
  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    self.class.all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def add_review(restaurant, rating)
    Review.new(self,restaurant,rating)
  end

  def restaurants
    customereviews = Review.all.select{|review| review.customer == self}
    customereviews.map{|review| review.restaurant }
  end

  def num_reviews
    customereviews = Review.all.select{|review| review.customer == self}
    customereviews.length
  end

  def self.find_by_name(fullname)
    Customer.all.find{|cust| cust.full_name == fullname}
  end

  def self.find_all_by_given_name(givenname)
    Customer.all.find_all{|cust| cust.given_name == givenname}
  end

  def self.all
    @@all
  end
end
