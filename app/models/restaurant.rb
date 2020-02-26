class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all = []
  end

  def customers_review
  #Must work on customer class 
  end 

  def review_avg_rating
  #Must work on review class
  end

  def review 
  
  end 

  def self 
    @@all = self
  end

end
