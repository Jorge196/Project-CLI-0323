class Cli
  def run
    puts " "
    puts "Hello Trainer, and welcome to the POKEDEX!"
    puts " "
    puts "Enter a Pokemon to see its ability and evolution."
    puts " "
    Api.get_pokemon
    print_pokemon
    puts " "
    puts "Type a number to see more details on a pokemon, 'list' to see the list again or 'exit' to exit"
    # get input from user 
    # while loop until the input is exit 
    # if it is list print pokemon again 
    # if it's a number get the details for that pokemon from the api and print them out.
    # else print error_message
    # prompt user, get input and do the loop again
    
    
   
   
  end
  
  def print_pokemon
    Pokemon.all.each.with_index(1) do |pokemon, i|
      puts "#{i}. #{pokemon.name.capitalize}"
    end 
  end 
end
