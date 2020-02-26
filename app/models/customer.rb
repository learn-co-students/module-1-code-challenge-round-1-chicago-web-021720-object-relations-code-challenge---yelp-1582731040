require_relative 'review'


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

  # custom
  def reviews
    # Get all Reviews associated with this customer
    Review.all.select { |review| review.customer == self }
  end

  def restaurants
    # Returns a UNIQUE array of all restaurants a customer has reviewed
    reviews.map { |review| review.restaurant }.uniq
  end

  def add_review(restaurant, rating)
    # Given a restaurant object and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    # Returns the total number of reviews that a customer has authored
    reviews.length
  end

  def self.find_by_name(name)
    # Given a string of a full name, returns the first customer whose full name matches
    self.all.find { |customer| customer.full_name == name }
  end

  def self.find_all_by_given_name(name)
    # Given a string of a given name, returns an array containing all customers with that given name
    self.all.select { |customer| customer.given_name == name }
  end

  def self.all
    @@all
  end

end


# --- Initializers, Readers, and Writers --- #

# Customer#initialize
# Customer should be initialized with a given name and family name, both strings (i.e., first and last name, like George Washington)"
# WRITTEN, TESTED

# Customer#given_name
# returns the customer's given name
# should be able to change after the customer is created
# WRITTEN, TESTED

# Customer#family_name
# returns the customer's family name
# should be able to change after the customer is created
# WRITTEN, TESTED

# Customer#full_name
# returns the full name of the customer, with the given name and the family name concatenated, Western style.
# WRITTEN, TESTED

# Customer.all
# returns all of the customer instances
# WRITTEN, TESTED


# --- Object Relationship Methods --- #

# Customer#restaurants
# Returns a unique array of all restaurants a customer has reviewed
# WRITTEN, TESTED

# Customer#add_review(restaurant, rating)
# given a restaurant object and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
# WRITTEN, TESTED


# --- Aggregate and Association Methods --- #

# Customer#num_reviews
# Returns the total number of reviews that a customer has authored
# WRITTEN, TESTED

# Customer.find_by_name(name)
# given a string of a full name, returns the first customer whose full name matches
# WRITTEN, TESTED

# Customer.find_all_by_given_name(name)
# given a string of a given name, returns an array containing all customers with that given name
# WRITTEN, TESTED
