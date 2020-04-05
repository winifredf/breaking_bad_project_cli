require 'pry'
require 'rest-client'
require 'json'

resp = RestClient.get("https://www.breakingbadapi.com/api/characters")
characters_hash = JSON.parse(resp.body, symbolize_names:true)
characters_array = characters_hash

characters_array.each do |char|
  binding.pry
  Character.new(char_id, name, birthday, occupation, img, status, appearance, nickname, portrayed)
end

