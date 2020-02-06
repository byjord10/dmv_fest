#Our CLI Controller

class DmvFest::CLI

  def call
    festival_list
    selection
  end

  def festival_list
    puts "Here is a list of music festivals in the DMV."
    puts <<-DOC.gsub /^\s*/,''
      1. Capital Jazz Fest
      2. Broccoli City Fest
      3. Something in the Water
      4. Moonrise Fest
    DOC
  end

  def selection
    puts "Select a number assigned to a Festival to get more information"
    input = gets.strip
    case input
    when "1"
      puts "More info on Capital Jazz Fest..."
    when "2"
      puts "More info on Broccoli City Fest..."
    end
  end
end 
