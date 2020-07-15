class Cli
  def run
    Api.get_pokemon
    Api.set_pokemon_details
    puts " "
    puts "Hello Trainer, and welcome to the POKEDEX!"
    puts " "
    print_pokemon
    puts " "
    puts "Type a number from '1-20' to see more details on a pokemon, 
          'list' to see the list again, or 'exit' to exit"
    puts " "
    input = gets.strip.downcase
    while input != 'exit' 
        if input == 'list'
          print_pokemon 
        elsif input.to_i > 0 && input.to_i <= Pokemon.all.length
            pokemon = Pokemon.all[input.to_i-1]
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
    puts "Name:  #{pokemon_object.name.capitalize}" 
    puts "Weight: #{pokemon_object.weight}" 
    puts "Height: #{pokemon_object.height}" 
    puts "Base_Experience: #{pokemon_object.base_experience}"
    puts "Abilities: #{pokemon_object.abilities.join(' , ')}" 
    puts "-----------------------------------------------"
    puts "Moves: #{pokemon_object.moves.join(' , ')}" 
    puts "-----------------------------------------------"
    puts " "
    puts "Type a number from '1-20' to see more details on a pokemon, 
        'list' to see the list again, or 'exit' to exit"
  end 
    
end 

