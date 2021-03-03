require "pry"
require_relative "./joke.rb"
class Cli
def welcome
    
    puts "--------------"
    puts "Hello fellow humor seeker! Would you like to hear a joke?: "
    
    answer = gets 
    
    binding.pry
    if answer == "yes"
        puts dad.setup
        sleep(8)
        puts dad.punchline
        
    else "Then why are you here?"
        sleep(2)
        puts "Oh look, Ive lost interest!"
        
    end 

    def another
        puts "Would you like another?: "

        answer = gets

        if answer == "yes"
            puts "Very well!"
            puts dad.setup
            sleep(8)
            puts dad.punchline
            another

        else "You can lie to yourself but dont lie to me.."
            exit
        end
    end
end