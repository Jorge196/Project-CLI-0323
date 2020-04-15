class Api
  
  def self.get_pokemon(evolution) 
      url = "https://pokeapi.co/api/v2/pokemon/evolution"
      response = Net::HTTP(URI(url))
  end 

end 