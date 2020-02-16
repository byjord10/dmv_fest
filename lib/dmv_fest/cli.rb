require_relative "../config/environment.rb"

class DmvFest::CLI
  BASE_PATH = "http://metromontage.com"
  attr_accessor :event_list_url


  def greeting
    puts "Hello!"
    puts "Here is a list of music festivals in the DMV."
    puts " L O A D I N G . . . . . . . . . . DMV FEST . . . . .  ".bold.colorize(:red)
    input = gets.chomp
    if input != "exit"
      user_input_loop
    end
  end

  def user_input_loop
    loop do
      puts "Please enter the number of the festival you would like to learn more about."
      puts "Enter "list" to see the list again or type "exit" to leave."
      event_list
      event_details
    if input == "exit"
      break
    elseif input != (1..50)
      puts ". . . . . . . . . . . . . . . . .".bold.colorized(:red)
      puts "Please enter a number listed"
    end
  end

  def event_list
    event_alphabetical = Event.all.sort_by {|event| event.name}
    event_alphabetical.each.with_index(1) {|event, index| puts "#{index}. #{event.name}"}
  end

  def event_details
    input = gets.chomp.to_i
    if (1..50).include?(input)
      @chosen_event = Event.all.sort_by {|event| event.name}[input -1]
      puts ". . . . . . . . . . . . . . . . .".bold.colorized(:red)
      puts "#{@chosen_event.name}".bold
      puts "#{@chosen_event.date}".bold
      puts "#{@chosen_event.location}".bold
      puts "#{@chosen_event.line_up}".bold
    elsif (1..50).include?(input) == false
      puts ". . . . . . . . . . . . . . . . .".bold.colorized(:red)
      puts "Enter "list" to see the list again or type "exit" to leave."
    end
  end
