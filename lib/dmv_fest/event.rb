require 'pry'
binding.pry
class DmvFest::Event
  # attr_accessor :name, :price, :line_up, :url
  include EventInfo

  @@all = []

  # def initialize(name, price, line_up, url)
  #   @name = name
  #   @price = price
  #   @line_up = line_up
  #   @url = url
  #   @@all << self
  # end
  
  def self.all
    @@all
  end

  def self.year
    self.scrape_event_1
    self.scrape_event_2
    self.scrape_event_3
    self.scrape_event_4
  end

  def self.scrape_events
     Event_info << self
  end
end
