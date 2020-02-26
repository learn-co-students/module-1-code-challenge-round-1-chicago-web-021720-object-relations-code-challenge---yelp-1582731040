class Review
    attr_accessor :text, :rating
    attr_reader :customer, :restaurant

    @@all = []

    def self.all
        @@all
    end

    # Added optional text parameter, as many (most?) reviews contain text
    def initialize(customer, restaurant, rating, text = 'nil')
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        @text = text
        @@all << self
    end
  
end