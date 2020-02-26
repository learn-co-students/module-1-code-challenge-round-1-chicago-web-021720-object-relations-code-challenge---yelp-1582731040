require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

jack_1 = Customer.new("Jack", "Attack")
jack_2 = Customer.new("Jack", "Smack")
jerry = Customer.new("Jerry", "Mason")
john = Customer.new("John", "Jacobs")

lou = Restaurant.new("Lou Malnati's")
sbarros = Restaurant.new("Sbarro's")
jets = Restaurant.new("Jet's Pizza")

rev_1 = Review.new(jack_1, lou, 5)
rev_2 = Review.new(jerry, lou, 4)
rev_3 = Review.new(john, sbarros, 2)
rev_4 = Review.new(jerry, sbarros, 3)
rev_5 = Review.new(jack_1, lou, 3)

john.add_review(jets, 4)
john.add_review(lou, 5)
jack_2.add_review(lou, 3)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line