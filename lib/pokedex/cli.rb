class Cli
  def run
    # get and set pokemon details
    Api.get_pokemon
    Api.set_pokemon_details
    
    puts " "
    puts "Hello Trainer, and welcome to the POKEDEX!"
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
            # Api.get_pokemon_details(pokemon) if !Pokemon.find_by_name(pokemon.name)
            # binding.pry
            print_single_pokemon(pokemon)
        elsif input == "name"
        else
  # if the CLI does not know the command you ran it gives this statement 
          puts "I don't know what you're saying - please try again"
          puts " "
  # after getting this statement it loops you back into the 'type a number' input to start again.
          
  # after typing each corresponding number gives you its details and its moves section you get every move with commas in paragraph form
        end 
        # binding.pry
        
        input = gets.strip.downcase
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
      puts "Name:  #{pokemon_object.name.capitalize}" 
      puts "Weight: #{pokemon_object.weight}" 
      puts "Height: #{pokemon_object.height" 
      puts "Base_Experience: #{pokemon_object.base_experience}"
      puts "Abilities: #{pokemon_object.abilities}" 
      puts "Moves: #{pokemon_object.moves}" 
      # binding.pry
      
  end 
    
end 

