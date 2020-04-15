class Cli
  def run
    puts " "
    puts "Hello Trainer, and welcome to the POKEDEX!"
    puts " "
    puts "Enter a Pokemon to see its ability and evolution."
    puts " "
    @evolution = gets.strip.downcase
    Api.get_pokemon(@evolution)
   
  end
end
