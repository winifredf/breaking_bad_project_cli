require 'pry'
require 'rest-client'
require 'json'

resp = RestClient.get("https://www.breakingbadapi.com/api/characters")
characters_hash = JSON.parse(resp.body, symbolize_names:true)
characters_array = characters_hash[0]
