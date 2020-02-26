require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


dave = Customer.new("dave", "brown")
dave2 = Customer.new("dave", "other dave")
arby = Restaurant.new ("arby #3")
review1 = Review.new(dave, arby, 4)
review2 = Review.new(dave, arby, 7)








binding.pry
0 #leave this here to ensure binding.pry isn't the last line