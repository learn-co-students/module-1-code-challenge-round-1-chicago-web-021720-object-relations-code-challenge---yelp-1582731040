class Customer
  attr_accessor :given_name, :family_name
  @@all = []
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @Restauraunt = Restauraunt
    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def Customer_Review  
  Customer = Review.all 
  end 
  


  def self.all 
  @@all
  end 
end
