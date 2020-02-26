require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


me = Customer.new("Owen", "Abbott")
elmilagro = Restaurant.new("El Milagro")
miraclereview = Review.new(me, elmilagro, 5)

joe = Customer.new("Joe", "Schmo")
joereview = Review.new(joe, elmilagro, 1)

#elmilagro.average_star_rating = 3!!!!! It works! Or at least that method works. I haven't tested the others. I wrote it all out in 
#for loops because I"m used to it and I was prioritizing getting everything to run right. If I had more time I'd refactor. It's 10:58 and I'm out of time.



# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

#elmilagro.average_star_rating = 3!!!!! It works! Or at least that method works. I haven't tested the others.