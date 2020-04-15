class Api
  
  def self.get_pokemon
      url = "https://pokeapi.co/api/v2/pokemon/"
      response = Net::HTTP.get(URI(url))
      pokemons = JSON.parse(response)["results"]
      pokemons.each {|p| pokemon.new(name: p["name"])}
  end 
end 