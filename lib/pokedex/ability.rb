class Ability 
  attr_accessor :name, :pokemons
  @@all = []
  
  def initialize(name)
    @name = name 
    @pokemons = []
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.find_by_ability(ability)
    @@all.find {|i| i.name == ability}
  end 
  
  
end 