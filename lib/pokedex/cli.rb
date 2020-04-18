class Cli
  def run
    puts " "
    puts "Hello Trainer, and welcome to the POKEDEX!"
    puts " "
    
    Api.get_pokemon
    
    user_input = get_user_input
    while user_input != 'exit' 
        if user_input == 'list'
          print_pokemon 
        elsif user_input.to_i > 0 && user_input.to_i <= Pokemon.all.length
            pokemon = Pokemon.all[user_input.to_i-1]
            Api.get_pokemon_details(pokemon) if !Pokemon.find_by_name(pokemon.name)
            print_single_pokemon(pokemon)
        elsif user_input == "name"
        else
  # if the CLI does not know the command you ran it gives this statement 
          puts "I don't know what you're saying - please try again"
          puts " "
          get_user_input
  # after getting this statement it loops you back into the 'type a number' input to start again.
          
  # after typing each corresponding number gives you its details and its moves section you get every move with commas in paragraph form
        end 
        binding.pry
        
        user_input = get_user_input 
      end 
      
      
    puts " "
    input = gets.strip.downcase 
    puts " "
    puts "Goodbye Trainer!"
  end 
  
  
  def get_user_input
    puts "Type a number from '1-20' to see more details on a pokemon, 
          'list' to see the list again, or 'exit' to exit"
    puts " "
    print "Command: "
    puts " "
# have a line separating the command of each input in order for the code to look cleaner when executed 
    input = gets.strip.downcase
    return input
  end
 
  # print the list of all pokemon to choose from
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
      # binding.pry
      
    puts name   
    puts abilities
    puts height
    puts weight 
    puts base_experience
    puts moves
  end 
    
end 

