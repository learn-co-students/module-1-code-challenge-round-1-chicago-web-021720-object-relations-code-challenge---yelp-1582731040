require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

wolff = Customer.new("david", "wolff")
zee = Customer.new("mary", "zee")

buffos = Restaurant.new("Buffos")
ramen = Restaurant.new("Ramen")

one_review = Review.new(wolff, buffos, 10)
two_review = Review.new(wolff, ramen, 6)
three_review = Review.new(zee, buffos, 8)

binding.pry














0 #leave this here to ensure binding.pry isn't the last line