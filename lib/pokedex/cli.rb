class Cli
  def run
    puts " "
    puts "Hello Trainer, and welcome to the POKEDEX!"
    Api.get_pokemon 
    prompt 
    input = gets.strip.downcase
    while input != 'exit' 
        if input == 'list'
          print_pokemon 
          
        elsif input.to_i > 0 && input.to_i <= Pokemon.all.length
            pokemon = Pokemon.all[input.to_i-1]
            Api.get_pokemon_details(pokemon) if !pokemon.name 
            print_pokemon(pokemon)
           
            print_single_pokemon(pokemon)
        elsif input == "name"
            prompt_name
        
        else
          puts "I don't know what you're saying - please try again"
          puts " "
        end 
        prompt 
        input = gets.strip.downcase 
      end 
      puts " "
    puts " "
    
    
    puts " "
    input = gets.strip.downcase 
    puts " "
    puts "Goodbye Trainer!"
  end 
  
  def prompt 
    puts " "
    puts "Type a number to see more details on a pokemon, 'list' to see the list again, 'ability' to select the abilities of a given Pokemon or 'exit' to exit"
    puts " "
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
  end 
    
end 

