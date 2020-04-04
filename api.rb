require 'pry'
require 'rest_client'
require 'json'

resp = RestClient.get("https://www.breakingbadapi.com/api/characters")
binding.pry