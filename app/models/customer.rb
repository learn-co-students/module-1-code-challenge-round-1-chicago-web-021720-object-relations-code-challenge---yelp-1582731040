class Customer
  attr_reader :given_name, :family_name

    @@all = []

  def self.all
     @@all
  end

  def self.find_by_name(name)
    @@all.find { |cust| cust.full_name == name }
  end

  def self.find_all_by_given_name(given_name)
    @@all.find_all { |cust| cust.given_name == given_name }
  end

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  # Added a reviews method, which makes other methods (num_reviews, review_by_restaurant) easier
  def reviews
    Review.all.find_all { |rev| rev.customer == self }
  end

  def add_review(restaurant, rating, text = nil)
    Review.new(self, restaurant, rating, text)
  end

  def num_reviews
    self.reviews.length
  end

  # Method that looks up a customer's reviews by restaurant; returns nil if nothing
  def review_by_restaurant(restaurant)
    self.reviews.find { |rev| rev.restaurant == restaurant }
  end

  # Enables customer to edit the text of the review
  # e.g. if they wish to delete/modify an angry diatribe shot off in heat of moment
  # Puts message if no review found for said restaurant
  def edit_review(restaurant, new_text)
    rest = self.review_by_restaurant(restaurant)
    if rest
      rest.text = new_text
    else
      puts "We could not find a review for this restaurant."
    end
  end

  # Allows customer to change their rating
  # Puts message if no review found for said restaurant
  def change_rating(restaurant, new_rating)
    rest = self.review_by_restaurant(restaurant)
    if rest
      rest.rating = new_rating
    else
      puts "We could not find a review for this restaurant."
    end
  end

end