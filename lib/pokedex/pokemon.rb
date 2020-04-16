class Pokemon
  attr_accessor :name, :url #and all the other attributes of pokemon 
  @@all = []
  
  def initialize(name:, url:)
    @name = name 
    @url = url
    @@all << self 
  end 
  
  def self.all 
    @@all
  end 

end