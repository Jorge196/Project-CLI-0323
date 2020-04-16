class Api
  
  def self.get_pokemon
      url = "https://pokeapi.co/api/v2/pokemon/"
      response = Net::HTTP.get(URI(url))
      pokemon = JSON.parse(response)["results"]
      new_ability = Ability.new(ability)
      pokemon.each do |p|
        new_pokemon = Pokemon.new {|p| Pokemon.new(name: p["name"], url: p["url"])}
        new_ability << new_ability 
       
  end 
  
  def self.get_pokemon_details(pokemon_object)
      url = pokemon_object.url 
      response = Net::HTTP.get(URI(url))
      pokemon = JSON.parse(response)
      
      pokemon_object.weight = pokemon["weight"]
      pokemon_object.height = pokemon["height"]
      pokemon_object.base_experience = pokemon["base_experience"]
      #pokemon_object.moves = pokemon["moves"][0]["move"]["name"]
      #pokemon_object.abilities = pokemon["abilities"][0]["ability"]["name"]
      binding.pry
  end 
    
end 