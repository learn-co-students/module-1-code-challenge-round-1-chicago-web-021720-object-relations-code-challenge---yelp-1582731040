require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("Name1","LastName1")
customer2 = Customer.new("Name2","LastName2")
customer3 = Customer.new("Name2","LastName2")
Customer.all

restaurant1 = Restaurant.new("Restaurant1")
restaurant2 = Restaurant.new("Restaurant2")
restaurant3 = Restaurant.new("Restaurant3")

review1 = Review.new(customer1, restaurant1, 5)
review2 = Review.new(customer2, restaurant2, 20)
review3 = Review.new(customer3, restaurant3, 30)
review4 = Review.new(customer2, restaurant1, 33)
review5 = Review.new(customer3, restaurant1, 10)
review6 = Review.new(customer1, restaurant2, 10)
Review.all

restaurant1.reviews
restaurant1.customers
customer1.num_reviews
Customer.find_by_name("Name1 LastName1")
Customer.find_by_name('Name2 LastName2')
Customer.find_all_by_given_name("Name2")

restaurant1.average_star_rating
restaurant2.average_star_rating
restaurant3.average_star_rating
customer1.restaurants
customer2.restaurants
customer3.restaurants

customer1.add_review(restaurant3, 99)
customer1.restaurants
restaurant3.reviews

#NEXT STEPS -- REFACTOR CODE FOR READABILITY AND MAINTAINABILITY -- WRITE TEST
#SUITES FOR UPGRADABILITY




binding.pry
0 #leave this here to ensure binding.pry isn't the last line
