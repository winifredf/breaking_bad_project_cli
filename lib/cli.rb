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
    list_characters
    puts ""
    puts  "Type the number of the character for additional information."
    input = gets.strip.to_i
    char = Character.find
    get_character_details(char)

  end
  
  def list_characters
    Character.all.each.with_index(1) do |char, index|
      puts  "#{index}. #{char.name}"
    end
  end
  
  def get_character_details(char)
    Character.all.each do |char|
      puts  ""
      puts  "_________#{char.name}____________"
      puts  "#{}"
      puts  "Occupation: #{char.occupation}"
      puts  "img: #{char.img}"
      puts  "Occupation: #{char.occupation}"
      puts  "Nickname: #{char.nickname}"
      puts  "Portrayed: #{char.portrayed}"
    end
  end

  
end

   