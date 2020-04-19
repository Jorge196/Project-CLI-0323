class Api
  
  def self.get_pokemon
      url = "https://pokeapi.co/api/v2/pokemon/"
      response = Net::HTTP.get(URI(url))
      pokemons = JSON.parse(response)["results"]
      pokemons.each {|p| Pokemon.new(name: p["name"], url: p["url"])}
      
     
  end 
  
  def self.set_pokemon_details()
      Pokemon.all.each do |pokemon|
        url = pokemon.url 
        response = Net::HTTP.get(URI(url))
        pokemon_details = JSON.parse(response)
        pokemon.abilities = pokemon_details["abilties"].map{|a| a["ability"]["name"]} 
        pokemon.moves = pokemon_details["moves"].map{|b| b["move"]["name"]}
        pokemon.weight = pokemon_details["weight"]
        pokemon.height = pokemon_details["height"]
        pokemon.base_experience = pokemon_details["base_experience"]
      # pokemon_object.abilities = pokemon["abilities"].map{|a| a["ability"]["name"]} 
      # pokemon_object.moves = pokemon["moves"].map{|b| b["move"]["name"]}
      # pokemon_object.weight = pokemon["weight"]
      # pokemon_object.height = pokemon["height"]
      # pokemon_object.base_experience = pokemon["base_experience"]
      
      # return pokemon_object 
  end 
end 
    
