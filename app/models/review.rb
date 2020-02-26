class Review
  @@all = []

  attr_reader :customer, :restaurant, :rating

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





#`Review#customer`
#  - returns the customer object for that review
#  - Once a review is created, should not be able to change the customer
# `Review#restaurant`
#  - returns the restaurant object for that given review
#  - Once a review is created, should not be able to change the restaurant

#I think the above is all handled by the attr_reader?
#I think attr_reader :customer for example should be the same as:
    #def customer
    #@customer=customer
    #end
#?