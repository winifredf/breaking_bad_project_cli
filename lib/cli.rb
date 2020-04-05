class CLI
  
  def call
    API.new.call_api
    puts "Welcome to the Breaking Bad Character Finder!"
    choose_a_character
  end
  
  def choose_a_character
    
  end
end