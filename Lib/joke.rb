#require_relative "./api.rb"
class Joke
    
    @@all = []

    def initialize (data_hash)
        
        data_hash.each do |key, value|
            self.class.attr_accessor(key)
            self.send("#{key}=", value)
            
        end
               
        @@all << self
    end
 
    def self.single
        @@all.select do |object|
            object.type == "single"
        end
    end
    def self.twopart
        @@all.select do |object|
            object.type == "twopart"
            #binding.pry
        end
    end

    def self.all
        @@all
    end
    
end
