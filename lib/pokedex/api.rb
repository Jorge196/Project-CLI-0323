class Api
  
  def self.get_pokemon
      url = "https://pokeapi.co/api/v2/pokemon/"
      response = Net::HTTP.get(URI(url))
      pokemon = JSON.parse(response)["results"]
      pokemon.each {|p| Pokemon.new(name: p["name"])}
       
  end 
end 