class DmvFest::CLI

  def call
    festival_list
    festival_selection
    goodbye
  end

  def festival_list
    puts "Here is a list of music festivals in the DMV."
    @events = DmvFest::Event.year
    @events.each.with_index(1) do |event, i|
      puts " #{event.name}"
      puts " #{event.price}"
      puts "Line up: #{event.line_up} "
    end
  end

  def festival_selection
    input = nil
    while input != "exit"
      puts " Select a number assigned to the festival of your choice to see the line up. Type festivals to see the list again or type exit and we'll catch ya next time."
      input = gets.strip.downcase

      if input.to_i > 0
        the_event = @events[input.to_i-1]
        puts " #{the_event.name}"
        puts " #{the_event.price}"
        puts "Line up: #{the_event.line_up} "
      elsif input == "festivals"
        festival_list
      elsif input.between?(5,100)
        puts " Unknown selection, please select 1-4 "
      end
    end
  end

  def goodbye
    input = "exit"
    puts " Thanks for using DMV Fest!"
    puts " Get updates on ticket prices and the line ups by signing up to our email list "
  end
end
