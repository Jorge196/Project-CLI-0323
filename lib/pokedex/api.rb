class Api
  
  def self.get_pokemon
      url = "https://pokeapi.co/api/v2/pokemon/evolution"
      response = Net::HTTP.get(URI(url))
      binding.pry
  end 

end 