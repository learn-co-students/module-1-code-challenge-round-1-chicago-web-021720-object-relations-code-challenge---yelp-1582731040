class Restaurant
  attr_reader :name, :review

  def initialize(name)
    @name = name
  end

  def reviews
    reviews_array = []
    for i in Review.all 
      if i.restaurant == self 
        reviews_array.push(i)
      end 
    end
    reviews_array
    #returns an array of all reviews for that restaurant
  end

  def customers(restaurant)
    customers_array = []
    for i in Review.all 
      if i.restaurant == self 
        customers_array.push(i.customer)
      end
    end
    customers_array
  #Returns a **unique** list of all customers who have reviewed a particular restaurant.
  end

  def average_star_rating
    sum = 0
    reviews.each do |i|
      sum += i.rating
    end
    average = sum / reviews.length
    return average
    #returns the average star rating for a restaurant based on its reviews
  end
end


#elmilagro.average_star_rating = 3!!!!! It works! Or at least that method works. I haven't tested the others. I wrote it all out in 
#for loops because I"m used to it and I was prioritizing getting everything to run right. If I had more time I'd refactor. It's 10:58 and I'm out of time.






