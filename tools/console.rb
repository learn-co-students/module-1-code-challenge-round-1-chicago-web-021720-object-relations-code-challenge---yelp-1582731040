require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# --- SETUP --- #

# Create some customers
customer_1 = Customer.new('John', 'Smith')
customer_2 = Customer.new('John', 'Kennedy')
customer_3 = Customer.new('Steve', 'Jobs')
customer_4 = Customer.new('Ellis', 'Andrews')

# Create some restaurants
wendys = Restaurant.new('Wendys')
mcdonalds = Restaurant.new('McDonalds')

# Create some reviews

# - John Smith's reviews
review_1 = Review.new(customer_1, wendys, 5)
review_2 = Review.new(customer_1, mcdonalds, 1)

# - John Kennedy's reviews
review_3 = Review.new(customer_2, wendys, 4)

# - Ellis Andrews' reviews
review_4 = Review.new(customer_4, mcdonalds, 3)
review_5 = Review.new(customer_4, mcdonalds, 5)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line