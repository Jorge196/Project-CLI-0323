class Cli
  def run
    puts " "
    puts "Hello Trainer, and welcome to the POKEDEX!"
    puts " "
    puts "Type a number from '1-20' to see more details on a pokemon, 
          'list' to see the list again, or 'exit' to exit"
    puts " "
    input = gets.strip.downcase
    
    
    Api.get_pokemon
    Api.set_pokemon_details
    
    puts pokemons
    
    user_input = get_user_input
    while user_input != 'exit' 
        if user_input == 'list'
          print_pokemon 
        elsif user_input.to_i > 0 && user_input.to_i <= Pokemon.all.length
            pokemon = Pokemon.all[user_input.to_i-1]
            Api.get_pokemon_details(pokemon) if !Pokemon.find_by_name(pokemon.name)
            # binding.pry
            # print_single_pokemon(pokemon_details)
        elsif user_input == "name"
        else
  # if the CLI does not know the command you ran it gives this statement 
          puts "I don't know what you're saying - please try again"
          puts " "
          get_user_input
  # after getting this statement it loops you back into the 'type a number' input to start again.
          
  # after typing each corresponding number gives you its details and its moves section you get every move with commas in paragraph form
        end 
        # binding.pry
        
        user_input = get_user_input 
      end 
      
      
    puts " "
    input = gets.strip.downcase 
    puts " "
    puts "Goodbye Trainer!"
  end 
  
  
  def prompt
    puts " "
    print "Command: "
    puts " "

  
  end
 
  # print the list of all pokemon to choose from
  def print_pokemon
    Pokemon.all.each.with_index(1) do |pokemon, i|
      puts "#{i}. #{pokemon.name.capitalize}"
      
    end 
  end 
  
  def print_single_pokemon(pokemon_object)
      puts pokemon_object.name 
      puts pokemon_object.weight 
      puts pokemon_object.height 
      puts pokemon_object.base_experience
      puts pokemon_object.abilities 
      puts pokemon_object.moves 
      # binding.pry
  end 
    
end 

