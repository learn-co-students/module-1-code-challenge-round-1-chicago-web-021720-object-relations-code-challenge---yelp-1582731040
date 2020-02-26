class Review
  
    attr_reader :customer, :restaurant, :rating

    @@all = []

    def initialize(customer, restaurant, rating)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end

end


# --- Initializers, Readers, and Writers --- #

# Review#initialize
# Reviews should be initialized with a customer, restaurant, and a rating (a number)
# WRITTEN, TESTED

# Review#rating
# returns the rating for a restaurant.
# WRITTEN, TESTED

# Review.all
# returns all of the reviews
# WRITTEN, TESTED


# --- Object Relationship Methods --- #

# Review#customer
# returns the customer object for that review
# Once a review is created, should not be able to change the customer
# WRITTEN, TESTED

# Review#restaurant
# returns the restaurant object for that given review
# Once a review is created, should not be able to change the restaurant
# WRITTEN, TESTED
