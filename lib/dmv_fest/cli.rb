#Our CLI Controller

class DmvFest::CLI

  def call
    festival_list
    festival_selection
    # price_selection
    goodbye
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

  def festival_selection
    input = nil
    while input != "exit"
    puts "Select a number assigned to the festival of your choice to see the line up."
    puts "Type festivals to see the list again or type exit and we'll catch ya next time."
    input = gets.strip
    case input
    when "1"
      puts "The talent lineup for the 2020 festival will be announced in spring 2020. Stay tuned."
      # price_selection
    when "2"
      puts "DaBaby, Roddy Ricch, Megan Thee Stallion, Burna Boy, Ari Lennox, Doja Cat, Lucky Daye, IDK, Soulection: Andre Power, Esta, Sasha Marie and Special Guest "
    when "festivals"
      festival_list
    else
      puts "Unknown selection, please select 1-4"
    end
  end

  def goodbye
    puts "Thanks for using DMV Fest!"
    puts "Get updates on ticket prices and the line ups by signing up to our email list"
  end
end
end
