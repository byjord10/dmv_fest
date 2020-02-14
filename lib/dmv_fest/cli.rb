class DmvFest::CLI


  def festivals
    event_list
    festival_selection
    goodbye
  end

  def event_list
    # binding.pry
    puts "Here is a list of music festivals in the DMV."
    @event = DmvFest::Event.new scrape_event_by_name
    event(@name) do |event|
      event.split(" ").first
      puts "#{event.name}"
    end
  end

  def festival_selection
    input = nil
    while input != "exit" #see if you could do without this line
      puts " Select a number assigned to the festival of your choice to see the line up. Type 0 to see the list again or type exit and we'll catch ya next time."
      input = gets.strip

      if input.to_i.between?(1,4)
        the_event = @events[input.to_i-1]
        puts " #{the_event.name}"
        puts " #{event.price}"
        puts "The Scene: #{event.the_scene}"
        puts "This years line up: #{event.line_up} "

      elsif input == "0"
        festival_list

      else
        puts " Unknown selection, please select 1-4 "

      end
    end
  end

  def goodbye
    input = "exit"

    puts " Thanks for using DMV Fest!"
  end
end
