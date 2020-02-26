require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cust1 = Customer.new("David", "Eber")
cust2 = Customer.new("Brian", "Chang")
cust3 = Customer.new("Nathan", "Sparks")
cust4 = Customer.new("David", "Wolff")

rest1 = Restaurant.new("Hippie Thai")
rest2 = Restaurant.new("DP Dough")

review1 = Review.new(cust1, rest1, 10)
review2 = Review.new(cust1, rest2, 5)
review3 = Review.new(cust2, rest1, 8)
review4 = Review.new(cust3, rest2, 7)
review5 = Review.new(cust3, rest2, 6)
review6 = Review.new(cust1, rest2, 6)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line