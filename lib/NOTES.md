# def self.year
#
#   self.scrape_events
# end
#
# def self.scrape_events

  # event_1 = self.new
  # event_1.name = "Capital Jazz Fest"
  # event_1.price = "TBA"
  # event_1.line_up = "The talent lineup for the 2020 festival will be announced in spring 2020. Stay tuned."
  # event_1.url = "https://www.capitaljazz.com/fest/2020/talent.php"
  #
  # event_2 = self.new
  # event_2.name = "Broccoli City Fest"
  # event_2.price = "General Admission $89.50, VIP Admission $179.50"
  # event_2.line_up = "DaBaby | Roddy Ricch | Megan Thee Stallion | Burna Boy | Ari Lennox | Doja Cat | Lucky Daye | IDK | Soulection: Andre Power, Esta | Sasha Marie | Special Guests"
  # event_2.url = "https://www.bcfestival.com/"
  #
  # event_3 = self.new
  # event_3.name = "Something in the Water"
  # event_3.price = "3-Day General Admission $250, 3-Day VIP Admission $600, 3-Day Yellow Zone Experience $1000"
  # event_3.line_up = "070 Shake | 6lack | 99 Neighbors | A$AP Rocky | Baby Rose | Beck | Brittany Howard | Buddy | Chad Hugo | Chance The Rapper | Clipse | Earthgang | Foo Fighters | Friendswithyou | Global Citizen | Gunna | H.E.R. | Jaden Smith | Jozzy | JR | Kali Uchis | KAWS | KP The Great | LANY | Usher | Wale | Trey Songz | Tyler, The Creator... and much more!"
  # event_3.url = "https://somethinginthewater.com/"
  #
  # event_4 = self.new
  # event_4.name = "Moonrise Fest"
  # event_4.price = "Sunday General Admission $125, Sunday VIP Admission $159, 2-Day VIP Upgrade $115"
  # event_4.line_up = "Walan Walker | Seven Lions | Yellow Clow | 21 Savage | Gryffin | 12th Planet | AC Slater... and much more!"
  # event_4.url = "http://moonrisefestival.com/"
  #
  # [event_1, event_2, event_3, event_4]

end

end

________

def call
  festival_list
  festival_selection
  goodbye
end

def festival_list
  puts "Here is a list of music festivals in the DMV."
  @events = DmvFest::Event.year
  @events.each.with_index(1) do |event, i|
  puts "#{i}. #{event.name} - #{event.price} - #{event.line_up} "
  end
end

def festival_selection
  input = nil
  if input != "exit"
    puts " Select a number assigned to the festival of your choice to see the line up. Type festivals to see the list again or type exit and we'll catch ya next time."
    input = gets.strip.downcase
    if input.to_i > 0
      the_event = @events[input.to_i-1]
      puts " #{the_event.name} - #{the_event.price} - #{the_event.line_up} "
    elsif input == "festivals"
      festival_list
    else
      puts " Unknown selection, please select 1-4 "
    end
  end
end

def goodbye
  input = "exit"
  puts " Thanks for using DMV Fest!"
  puts " Get updates on ticket prices and the line ups by signing up to our email list "
end

________
attr_accessor :name, :price, :line_up, :url

@@fest = []

def intialize(attributes)
  attributes.each {|key, value|
    begin
      self.send(("#{key}="), value)}
    @@fest << self
  end
end

def price
  @price
end

def self.all
  @@fest
end

def self.festival_name(name)
  self.all.detect do |festival|
    festival.name == name
  end
end




________ Resource notes ________
-change "string" to %|string| to make code look better
