class DmvFest::CLI

  def call
    festival_list
    festival_selection
    # price_selection
    goodbye
  end

  def festival_list
    puts "Here is a list of music festivals in the DMV."
    # puts <<-DOC.gsub /^\s*/,''
    #   1. Capital Jazz Fest
    #   2. Broccoli City Fest
    #   3. Something in the Water
    #   4. Moonrise Fest
    # DOC
    @events = DmvFest::Event.year
    @events.each.with_index(1) do |event, i|
      puts "#{i}. #{event.name} - #{event.price} - #{event.line_up}"
    end
  end

  def festival_selection
    input = nil
    while input != "exit"
      puts "Select a number assigned to the festival of your choice to see the line up."
      puts "Type festivals to see the list again or type exit and we'll catch ya next time."
      input = gets.strip.downcase
    if input.to_i > 0
      the_event = @events[input.to_i-1]
      puts "#{the_event.name} - #{the_event.price} - #{the_event.line_up}"
    elsif input == "festivals"
      festival_list
    else
      puts "Unknown selection, please select 1-4"
    end
  end

  def goodbye
    input = "exit"
    puts "Thanks for using DMV Fest!"
    puts "Get updates on ticket prices and the line ups by signing up to our email list"
  end
end
end
