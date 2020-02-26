class Customer
  attr_accessor :given_name, :family_name

  @@all = [] #for self.all

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self #glad i tested, bc almost forgot this!
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all #returns array of all instances
    @@all
  end

  def restaurants
    selection = Review.all select do |restaurants|


  end


end
