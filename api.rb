require 'pry'
require 'rest-client'
require 'json'

resp = RestClient.get("https://www.breakingbadapi.com/api/characters")
binding.pry