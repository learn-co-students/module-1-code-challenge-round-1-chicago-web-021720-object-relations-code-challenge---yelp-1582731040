class Customer
  attr_accessor :given_name, :family_name
  attr_reader :full_name

  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all = []
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self 
    @@all = self 
  end

end
