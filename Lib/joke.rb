class Joke
    
    attr_accessor :setup, :punchline, :type
    
    @@all = []

    def initialize (data_hash)
        data_hash["body"][0].each do |key, value|
            if !key.include?("_")                
                self.send("#{key}=", value)
            end
        end
        @@all << self
    end
       
    def get_setup
        self.body["setup"]
    end

    def get_punchline
        self.body["punchline"]
    end

    def self.all
        @@all
    end
end
