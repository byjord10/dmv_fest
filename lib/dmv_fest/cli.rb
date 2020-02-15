class DmvFest::CLI
  attr_accessor :events


  def festivals
    puts "Here is a list of music festivals in the DMV."
    event_list
    festival_selection
    goodbye
  end

  def event_list
    @events = DmvFest::Event.get_event_by_name
    @events.each do |event, i|
    puts "#{i}. #{event.name} - #{event.price} - #{event.line_up} "
    end
  end


  def festival_selection

    input = nil
    while input != "exit" #see if you could do without this line
      puts " Select a number assigned to the festival of your choice to see the line up. Type 0 to see the list again or type exit and we'll catch ya next time."
      input = gets.strip

      if input.to_i > 0
        the_event = @events[input.to_i-1]
            Event.all.each do |event|
              # if event.name && event.name != ""
                puts "Festival: #{event.name}"
                puts "Location and Date: #{event.location} - #{event.date}"
                puts "Line Up: #{event.line_up}"
            end
          end

      if input == "0"
        festival_list

      else
        puts " Unknown input. Type 0 to see the list again or exit."
      end
    end


  def goodbye
    input = "exit"

    puts " Thanks for using DMV Fest!"
  end
end
end 
