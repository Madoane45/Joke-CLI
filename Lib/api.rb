require 'open-uri'
require 'net/http'
require 'openssl'
require "pry"
require "httparty"
require "json"
require_relative "./joke.rb"
class Api
=begin
    def self.chuck_norris_random
        url = URI("https://matchilling-chuck-norris-jokes-v1.p.rapidapi.com/jokes/random")

        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE

        request = Net::HTTP::Get.new(url)
        request["accept"] = 'application/json'
        request["x-rapidapi-key"] = '8d7b63cfafmsha8422cf6e64bf68p1ccf95jsn6b154480b93d'
        request["x-rapidapi-host"] = 'matchilling-chuck-norris-jokes-v1.p.rapidapi.com'

        response = http.request(request)
       data = JSON.parse(response.body)
       Joke.new(data)
    end
=end    
    def self.dad_jokes
        url = URI("https://dad-jokes.p.rapidapi.com/random/joke")
        
        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE
        
        request = Net::HTTP::Get.new(url)
        request["x-rapidapi-key"] = '8d7b63cfafmsha8422cf6e64bf68p1ccf95jsn6b154480b93d'
        request["x-rapidapi-host"] = 'dad-jokes.p.rapidapi.com'
        
        response = http.request(request)
        #binding.pry
        data = JSON.parse(response.body)
        Joke.new(data)
    end
    dad = Api.dad_jokes

    
    #chuck = Api.chuck_norris_random
    
end    