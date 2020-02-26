require_relative 'review'


class Restaurant
  
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    # Returns an array of all reviews for that restaurant
    Review.all.select { |review| review.restaurant == self }
  end

  def customers
    # Returns a UNIQUE list of all customers who have reviewed a particular restaurant.
    reviews.map { |review| review.customer }.uniq
  end

  def average_star_rating
    # Returns the average star rating for a restaurant based on its reviews
    # Reminder: you can calculate the average by adding up all the ratings and dividing by the number of ratings
    reviews.sum { |review| review.rating }.to_f / reviews.length
  end

  def self.all
    @@all
  end

end


# --- Initializers, Readers, and Writers --- #

# Restaurant#initialize
# Restaurants should be initialized with a name, as a string
# WRITTEN, TESTED

# Restaurant#name
# returns the restaurant's name
# should NOT be able to change after the restaurant is created
# WRITTEN, TESTED


# --- Object Relationship Methods --- #

# Restaurant#reviews
# returns an array of all reviews for that restaurant
# WRITTEN, TESTED

# Restaurant#customers
# Returns a UNIQUE list of all customers who have reviewed a particular restaurant.
# WRITTEN, TESTED


# --- Aggregate and Association Methods --- #

# Restaurant#average_star_rating
# returns the average star rating for a restaurant based on its reviews
# Reminder: you can calculate the average by adding up all the ratings and dividing by the number of ratings
# WRITTEN, TESTED
