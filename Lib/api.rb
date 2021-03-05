require 'open-uri'
require 'net/http'
require 'openssl'
require "pry"
require "httparty"
require "json"
#require_relative "./joke.rb"
class Api

    def self.joke_api_random
        url = URI("https://v2.jokeapi.dev/joke/Any?amount=5safe-modetype=twopart")

        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE

        request = Net::HTTP::Get.new(url)
        request["x-rapidapi-key"] = '8d7b63cfafmsha8422cf6e64bf68p1ccf95jsn6b154480b93d'
        request["x-rapidapi-host"] = 'jokeapi-v2.p.rapidapi.com'
        
        response = http.request(request)
        data = JSON.parse(response.body)
        array_hashes = data["jokes"]
        array_hashes.each do |hash|
            Joke.new(hash)
        #binding.pry
        end
       
        
    end

   joke_random = self.joke_api_random
end    