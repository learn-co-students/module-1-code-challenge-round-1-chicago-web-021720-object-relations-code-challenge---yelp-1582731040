class Review

    attr_accessor :rating 
    attr_reader :customers_reviews, :customer, :resturant

    @@all = []

    def initialize(customer, resturant, rating=0)
        @customer = customer
        @resturant = resturant
        @rating = rating
        @@all = [] 
    end 

    def self 
        @@all = self 
    end

    def customers_reviews 
        
    end 

    def resturant_rating

    end 

end