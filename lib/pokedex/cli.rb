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
         elsif input.to_i > 0 && input.to_i <= Pokemon.all.length
            pokemon = Pokemon.all[input.to_i-1]
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
      name = pokemon_object.name 
      weight = pokemon_object.weight 
      height = pokemon_object.height 
      base_experience = pokemon_object.base_experience
      abilities = pokemon_object.abilities 
      moves = pokemon_object.moves 
      
    puts name   
    puts abilities
    puts height
    puts weight 
    puts base_experience
    puts moves
    
    binding.pry 
  end 
end
