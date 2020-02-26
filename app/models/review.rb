class Review
    attr_accessor :rating
    attr_reader :customer, :restaurant
    @@all = []

    def initialize(customer, restaurant, rating)
    # Reviews should be initialized with a customer, restaurant, and a rating (a number)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        @@all << self 
    end

    def self.all
    # returns all of the reviews
        @@all
    end  
end
