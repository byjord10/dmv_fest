require 'pry'
class DmvFest::Event
  attr_accessor :name, :price, :line_up, :url

  @@all = []

  def initialize(name, price, line_up, url)
    @name = name
    @phone = phone
    @line_up = line_up
    @url = url
    @@all << self
  end

  def self.all
    @@all
  end

  def self.year
    self.scrape_events
  end

  def self.scrape_events
    events << self.scrape_jazz
    events << self.scrape_broccoli

    events
  end

binding.pry
  def self.scrape_jazz(event_1)
    binding.pry
    doc = Nokogiri::HTML(open("https://www.capitaljazz.com/fest/2020/talent.php"))

    event_1 = self.new
    event_1.name = doc.search("text-center no-space-bottom").text.strip
    event_1.price = doc.search("Ticket Info &amp; Prices").text
    event_1.line_up = doc.search("text-center").text
    event_1.url = doc.search("capitaljazz.com")

    return events
  end

  def self.scrape_broccoli
    doc = Nokogiri::HTML(open())

    event = self.new
    event.name = doc.search(" ").text.strip
    event.price = doc.search("col-sm-2 nopadding text-center xtix-price ").text
    event.line_up = doc.search("").text
    event.url = " "

    event
  end

  def self.scrape_something_in_the_water
    doc = Nokogiri::HTML(open())

    event = self.new
    event.name = doc.search(" ").text.strip
    event.price = doc.search(" ").text
    event.line_up = doc.search("").text
    event.url = " "

    event
  end

  def self.scrape_moonrise
    doc = Nokogiri::HTML(open())

    event = self.new
    event.name = doc.search(" ").text.strip
    event.price = doc.search(" ").text
    event.line_up = doc.search("").text
    event.url = " "

    event
  end
end
