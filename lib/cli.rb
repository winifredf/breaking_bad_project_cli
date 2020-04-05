class CLI
  
  def call
    API.new.call_api
    puts "My program really works!!!"
  end
end