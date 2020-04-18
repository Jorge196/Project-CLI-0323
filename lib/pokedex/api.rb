class Api
  
  def self.get_pokemon
      url = "https://pokeapi.co/api/v2/pokemon/"
      response = Net::HTTP.get(URI(url))
      pokemons = JSON.parse(response)["results"]
      pokemons.each {|p| Pokemon.new(name: p["name"], url: p["url"])}
     
  end 
  
  def self.get_pokemon_details(pokemon_object)
      url = pokemon_object.url 
      response = Net::HTTP.get(URI(url))
      pokemon = JSON.parse(response)
      
      pokemon_object.abilities = pokemon["abilities"].map{|a| a["ability"]["name"]} 
      pokemon_object.moves = pokemon["moves"].map{|b| b["move"]["name"]}
      pokemon_object.weight = pokemon["weight"]
      pokemon_object.height = pokemon["height"]
      pokemon_object.base_experience = pokemon["base_experience"]
      
      return pokemon_object 
  end 
end 
    
