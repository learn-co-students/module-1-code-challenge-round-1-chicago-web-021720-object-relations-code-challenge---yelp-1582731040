require_relative 'review.rb'

class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
# Restaurants should be initialized with a name, as a string
    @name = name
    @@all << self 
  end

  def self.all
    #returns all initialized restaurant classes
    @@all 
  end 

  def reviews 
    # returns an array of all reviews for that restaurant
    Review.all.select do |review|
      review.restaurant == self 
    end 
  end 

  def customers #could DRY this by creating helper method for 'cust_list'
    # Returns a unique list of all customers who have reviewed a particular restaurant.
    # self.reviews.map
    #realized this one is wrong
    cust_list = Review.all.map do |review|
      review.customer
    end 
    cust_list.uniq
  end

  def average_star_rating
    # returns the average star rating for a restaurant based on its reviews
    rating_array = reviews.map do |review|
      review.rating
    end 
    rating_array.sum / rating_array.length 
  end 
end



