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

  def reviews
    Review.all.select {|review_instance| review_instance.customer == self}
  end
  
  def restaurants
    self.reviews.map {|review_instance| review_instance.restaurant}.uniq
  end

  #INPUTS: restaurant instance, rating integer
  #OUTPUTS: new review instance
  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    self.reviews.count
  end
  
  #INPUTS: fullname as a string
  #OUTPUTS: first customer instance where #full_name matches the given string
  def self.find_by_name(name)
    self.all.find {|cust_instance| cust_instance.full_name == name}
  end
  
  #INPUTS: given name as string
  #OUTPUTS: array of customer instances where #given_name matches the given string 
  def self.find_all_by_given_name(name)
    self.all.select {|cust_instance| cust_instance.given_name == name}
  end

end
