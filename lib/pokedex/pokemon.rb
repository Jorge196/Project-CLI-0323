class Pokemon
  attr_accessor :name, :url, :abilities, :height, :weight, :moves, :base_experience #and all the other attributes of pokemon 
  @@all = []
  
  def initialize(name:, url:)
    @name = name 
    @url = url
    @abilities = []
    @weight = []
    
    
    @@all << self 
  end 
  
  def self.all 
    @@all
  end 
  
  def self.find_by_name(name)
   
    @@all.select {|p| p.name == name}
  end 

end