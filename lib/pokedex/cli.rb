class Cli
  def run
    puts " "
    puts "Hello Trainer, and welcome to the POKEDEX!"
    puts " "
    puts "Enter a Pokemon to see its ability and evolution."
    puts " "
    Api.get_pokemon
    print_pokemon
    puts "Type a number to see more details on a pokemon, 'list' to see the list again, 'ability' to select the abilities of a given Pokemon or 'exit' to exit" 
    puts " "
    input = gets.strip.downcase
    while input != 'exit' 
        if input == 'list'
          print_pokemon(Ability.find_by_ability(@ability).pokemons)
          elsif input.to_i > 0 && input.to_i <= Ability.find_by_ability(@ability).pokemons.length 
            pokemon = Ability.find_by_ability(@ability).pokemons[input.to_i-1]
        # elsif input.to_i > 0 && input.to_i <= Pokemon.all.length
            # pokemon = Pokemon.all[input.to_i-1]
            Api.get_pokemon_details(pokemon) 
           
            print_single_pokemon(pokemon)
        elsif input == "name"
        
        else
          puts "I don't know what you're saying - please try again"
          puts " "
        end 
        input = gets.strip.downcase
    end 
    puts " "
    puts "Goodbye Trainer!"
  end
  
  def print_pokemon
    Pokemon.all.each.with_index(1) do |pokemon, i|
      puts "#{i}. #{pokemon.name.capitalize}"
    end 
  end 
  
  def print_single_pokemon(pokemon_object)
    puts pokemon_object.height
    puts pokemon_object.weight 
    puts pokemon_object.base_experience
  end 
end
