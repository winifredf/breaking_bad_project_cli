class CLI
  
  def call
    API.new.call_api
    puts "Welcome to the Breaking Bad Character Finder!"
    choose_a_character
  end
  
  def choose_a_character
    puts  ""
    puts  "Choose a character to receive additional information."
    input = gets.strip.to_i
  end
end