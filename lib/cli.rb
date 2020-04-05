class CLI
  
  def call
    API.new.call_api
    puts "Welcome to the Breaking Bad Character Finder!"
    choose_a_character
    
  end
  
  def choose_a_character
    puts  ""
    puts  "Press Enter to view a list of characters."
    input = gets.strip.to_i
    list_characters(input)
    puts  "Type the number of the character for additional information."
    input = gets.strip.to_i

  end
  
  def list_characters(input)
    Character.all.each.with_index(1) do |char, index|
      puts  "#{index}. #{char.name}"
    end
  end
end