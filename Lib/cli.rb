require "pry"
require_relative "./joke.rb"

class Cli
    
    def run
        welcome 
    end

    def welcome
        puts "-------vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv--------"
        puts "-------WARNING SOME CONTENT MAY BE OFFENSIVE--------"
        puts "---------------proceed with caution-----------------"
        puts "-------^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^--------"
        
        puts "Hello fellow humor seeker! Would you like to hear a joke?: "
    
        answer = gets

        if answer = "yes"
            puts "What type of joke would you like to hear? single or twopart: "
            
            answer = gets
       
            if answer == "twopart"
            
                joke_random = self.joke_api_random
                puts joke_random.setup
                sleep(8)
                puts joke_random.delivery
                sleep(2)
                another
            else answer == "single"
                binding.pry
              
            end
        end
    end 

    
end