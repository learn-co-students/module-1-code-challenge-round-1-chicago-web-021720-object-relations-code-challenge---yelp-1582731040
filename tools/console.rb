require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# create some customers
jack = Customer.new("Jack", "Overby")
edgar = Customer.new("Edgar", "Grullon")
will = Customer.new("Guillaume", "Fortina")
jack_n = Customer.new("Jack", "Nicklaus")

# create some restaurants
tango_sur = Restaurant.new("Tango Sur")
sushi_para = Restaurant.new("Sushi Para")
fogo = Restaurant.new("Fogo De Chao")
fed = Restaurant.new("Federales")
taco_bell = Restaurant.new("Taco Bell")

# ensure that .all class methods work
p Customer.all
p Restaurant.all

# adding a bunch of reviews
jack.add_review(tango_sur, 5)
edgar.add_review(tango_sur, 4)
will.add_review(tango_sur, 4)

jack.add_review(sushi_para, 5)
edgar.add_review(sushi_para, 4)
will.add_review(sushi_para, 3)

# One review with text
jack_n.add_review(sushi_para, 5, "Excellent food... my friend Jumbo Ozaki would be proud!")

jack.add_review(taco_bell, 4)
edgar.add_review(taco_bell, 3)
will.add_review(taco_bell, 1)

jack.add_review(fed, 3)
edgar.add_review(fed, 5)

jack.add_review(fogo, 5)
edgar.add_review(fogo, 2)
will.add_review(fogo, 4)

# Users adding text to reviews after the fact
edgar.edit_review(tango_sur, "Not bad, for a bunch of Argentines")
jack.edit_review(taco_bell, "The pinnacle of class, sophistication and authentic Mexican cuisine... *Borat voice* NOT!")
will.edit_review(taco_bell, "In France, we would call this... 'merde total'")

# testing to see if text was indeed added 
p edgar.review_by_restaurant(fogo)
p jack.review_by_restaurant(taco_bell)
p will.review_by_restaurant(taco_bell)

# change_rating function
jack.change_rating(taco_bell, 5)
will.change_rating(fed, 4)

# Ensuring that Restaurant.customers class methods works
Restaurant.all.each { |r| p r.customers }

# Testing full_name and num_reviews instance methods
Customer.all.each{ |cust| puts "Customer: #{cust.full_name}, Reviews: #{cust.num_reviews}" }
Restaurant.all.each { |rest| puts  "Restaurant: #{rest.name}, Average Rating: #{rest.average_star_rating}" }

Customer.find_by_name("Jack") # empty array
Customer.find_all_by_given_name("Jack") # Jacks Overby and Nicklaus

# shows all reviews with text
Customer.all.each { |c| p c.reviews.find_all { |r| r.text} }

binding.pry
0 #leave this here to ensure binding.pry isn't the last line