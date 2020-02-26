class Restaurant
  
  attr_reader :name

# Going to probably need @@all 

  def initialize(name)
    @name = name
  end

  def reviews
     selection = Review.all.select do |review|
      review.restaurant_in == self
     end
     binding.pry
     selection.collect do |x|
      x.rating  #getting nil
     end
  end

  def customers  #not sure if this is unique
    selection = Review.all.select do |customers|
      customers.restaurant_in == self
    end
    selection.collect do |x|
      x.customer_in
    end
  end






end
