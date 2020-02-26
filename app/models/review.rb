class Review
    attr_reader :Customer, :Restauraunt 
    @@all = []

    def initialize (Customer, Restauraunt,Rating)
    @Customer = Customer 
    @Restauraunt = Restauraunt 
    @Rating = Rating
    @@all << self 
    end 

    def self.all
        @@all 
    end 

end 




  
