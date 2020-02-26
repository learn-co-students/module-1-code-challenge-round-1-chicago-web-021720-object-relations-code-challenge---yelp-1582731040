class Review
 
    attr_accessor :rating
    attr_reader :customer_in, :restaurant_in
    
    @@all = []
    
    def initialize (customer_in, restaurant_in, rating)
        @customer_in = customer_in
        @restaurant_in = restaurant_in
        @rating = rating
        @@all << self
    end

    def rating
    #come back to this...may need arguement, and to do some math to return average rating?
    
    end

    def self.all
        @@all
    end

    def customer
        self.customer_in
    end

    def restaurant
        self.restaurant_in
    end

end