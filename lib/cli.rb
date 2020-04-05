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
    
    list_characters(input)
  end
  
  def list_characters(input)
    Character.all.each.with_index(1) do |char, index|
      puts  "#{index}. #{char.name}"
    end
  end
end