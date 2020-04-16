class Pokemon
  attr_accessor :name, :url, :ability, :effect #and all the other attributes of pokemon 
  @@all = []
  
  def initialize(name:, url:)
    @name = name 
    @url = url
    @@all << self 
  end 
  
  def self.all 
    @@all
  end 
  
  def self.find_by_ability(ability)
    @@all.select {|p| p.ability == ability}
  end 

end