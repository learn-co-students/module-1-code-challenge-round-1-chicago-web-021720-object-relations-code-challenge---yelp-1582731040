require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
ethan = Customer.new("ethan", "davidson")
sanders = Customer.new("bernie", "sanders")
gates = Customer.new("bill", "gates")
newton = Customer.new("isaac", "newton")
hawke = Customer.new("ethan", "hawke")

hardees = Restaurant.new("Hardees")
applebees = Restaurant.new("Applebees")
budlong = Restaurant.new("Budlong")
doves = Restaurant.new("Doves")

Review.new(ethan, doves, 4)
Review.new(newton, doves, 3)
Review.new(gates, hardees, 3)
Review.new(sanders, doves, 4)
Review.new(sanders, applebees, 3)
Review.new(newton, hardees, 1)
Review.new(newton, hardees, 2)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line