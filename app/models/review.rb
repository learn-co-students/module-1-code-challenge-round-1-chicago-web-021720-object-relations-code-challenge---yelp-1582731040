class Review
    attr_accessor :customer, :restaurant, :review
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

    def self.customer
        self.all.select {|review| review.customer}
    end

    def self.restaurant
        self.all.find {|review| review.restaurant}
    end
end