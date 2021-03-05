require "pry"
require_relative "./joke.rb"

class Cli
    
    def welcome
        puts "-------vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv--------"
        puts "-------WARNING SOME CONTENT MAY BE OFFENSIVE--------"
        puts "---------------proceed with caution-----------------"
        puts "-------^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^--------"
        ask_for_joke
    end

    def ask_for_joke
        puts "Hello fellow humor seeker! Would you like to hear a joke?"
        puts "1 Yes"
        puts "2 No"
        answer = gets.strip

        if answer == "1"
            puts "What type of joke would you like to hear?"           
            joke_type
        elsif answer =="2"
            exit
        else
            ask_for_joke
        end
        
    end

    def joke_type
        puts  "1 #{Joke.all[0].category}"
        puts  "2 #{Joke.all[1].category}"
        puts   "3 #{Joke.all[2].category}"
        puts   "4 #{Joke.all[3].category}"
        puts   "5 #{Joke.all[4].category}"
        answer = gets.strip
        if answer == "1"
            if Joke.all[0].type == "single"
            puts Joke.all[0].joke
            another
            else
            puts Joke.all[0].setup
            sleep(4)
            puts Joke.all[0].delivery
            another
            end       
        elsif answer == "2"
            if Joke.all[1].type == "single"
            puts Joke.all[1].joke
            another
            else
            puts Joke.all[1].setup
            sleep(4)
            puts Joke.all[1].delivery
            another 
            end
        elsif   answer == "3"
            if Joke.all[2].type == "single"
            puts Joke.all[2].joke
            another
            else
            puts Joke.all[2].setup
            sleep(4)
            puts Joke.all[2].delivery
            another 
            end
        elsif answer == "4"
            if Joke.all[3].type == "single"
            puts Joke.all[3].joke
            another
            else
            puts Joke.all[3].setup
            sleep(4)
            puts Joke.all[3].delivery
            another
            end
        elsif answer == "5"
            if Joke.all[4].type == "single"
            puts Joke.all[4].joke
            another
            else
            puts Joke.all[4].setup
            sleep(4)
            puts Joke.all[4].delivery
            another
            end
        else
            joke_type
        end
    end
    def another
            
        puts "Would you like to hear another?"
        puts "1 Yes"
        puts "2 No"

        answer = gets.strip

        if answer == "1"
            joke_type
        elsif answer == "2"
              exit
        else 
            another
        end
    end

    def exit
        exit!
    end   
end