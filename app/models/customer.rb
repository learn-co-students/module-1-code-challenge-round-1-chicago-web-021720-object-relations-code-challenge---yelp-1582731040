class Customer
  attr_accessor :given_name, :family_name
  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all 
    @@all 
  end

  def restaurants
    restaurants_array = []
    for i in Review.all
      if i.customer == self
        restaurants_array.push(i.restaurant)
      end
    end
    restaurants_array
    #Returns a **unique** array of all restaurants a customer has reviewed
  end 

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
    #given a **restaurant object** and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
  end

  def num_reviews 
    counter = 0
    for i in Review.all
      if i.customer == self 
        counter+=1
      end
    end
    counter
    #Returns the total number of reviews that a customer has authored
   end

  def self.find_by_name(name)
    for i in self.all 
      if i.full_name==name
        return i
        break
        #I think that it should return on the first hit, which would end the loop? But just in case it iterates through everything I'm putting in a break statement.
        #I'm not sure if this is right or not.
      end
    end
  #given a string of a **full name**, returns the **first customer** whose full name matches
  end

  def self.find_all_by_given_name(name)
    given_name_array = []
    for i in self.all
      if i.given_name == name 
        given_name_array.push(i)
      end
    end
    given_name_array
  #given a string of a given name, returns an **array** containing all customers with that given name
  end


end




#I haven't tested any of this so it's probably all pretty broken. 