class Cli
  def run
    puts " "
    puts "Hello Trainer, and welcome to the POKEDEX!"
    puts " "
    Api.get_pokemon
    # puts "Enter a Pokemon to see its "
  end
end
