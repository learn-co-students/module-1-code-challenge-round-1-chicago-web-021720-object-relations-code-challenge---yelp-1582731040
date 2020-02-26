require_relative 'review.rb'

class Customer
  attr_accessor :given_name, :family_name
  @@all = []

  def initialize(given_name, family_name)
#   - Customer should be initialized with a given name and family name, both strings
    @given_name = given_name
    @family_name  = family_name
    @@all << self 
  end

  def full_name
# - returns the full name of the customer, with the given name and the family name concatenated, Western style.
    "#{given_name} #{family_name}"
  end

  def self.all
#   - returns **all** of the customer instances
    @@all
  end 

  def restaurants
    # Returns a unique array of all restaurants a customer has reviewed
    rest_array = Review.all.map do |review|
      review.restaurant 
    end 
    rest_array.uniq
  end 

  def add_review(restaurant, rating)
    # given a restaurant object and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
    Review.new(self, restaurant, rating)
  end 

  def num_reviews
    # Returns the total number of reviews that a customer has authored
    review_array = Review.all.select do |review|
      review.customer == self 
    end 
    review_array.length
  end 

  def self.find_by_name(name)
    # given a string of a full name, returns the first customer whose full name matches
    self.all.find do |cust|
      cust.full_name == name 
    end 
  end 

  def self.find_all_by_given_name(name)
    # given a string of a given name, returns an array containing all customers with that given name
    self.all.find_all do |cust|
      cust.given_name == name 
    end
  end 
end


