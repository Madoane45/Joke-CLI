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
    # find one the types of jokes ( take in a type input )
    def self.single
        @@all.select do |object|
            object.type == "single"
        end
    end

    def self.all
        @@all
    end

end
