class Character
  
  attr_accessor :char_id, :name, :birthday, :occupation, :img, :status, :appearance, :nickname, :portrayed
  
  @@all = []
  
  def initialize(char_id, name, birthday, occupation, img, status, appearance, nickname, portrayed)
    @char_id = char_id
    @name = name
    @birthday = birthday
    @occupation = occupation
    @img = img
    @status = status
    @appearance = appearance
    @nickname = nickname
    @portrayed = portrayed
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  
  def self.find
    self.all
  end
  
  def self.name
    self.find
  end
  
end