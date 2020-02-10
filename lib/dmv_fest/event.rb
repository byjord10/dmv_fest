class DmvFest::Event
  attr_accessor :name, :price, :line_up


  def self.year
    self.scrape_events
  end

  def self.scrape_events
    events = []

    events << self.scrape_jazz
    events << self.scrape_broccoli

    events
  end


  def self.scrape_jazz
    doc = Nokogiri::HTML(open("https://www.capitaljazz.com/fest/2020/talent.php"))

    event = self.new
    event.name = doc.search("text-center no-space-bottom").text.strip
    event.price = doc.search("Ticket Info &amp; Prices").text
    event.line_up = doc.search("text-center").text
    event.url = doc.search("capitaljazz.com")

    event
  end

  def self.scrape_broccoli
    doc = Nokogiri::HTML(open())

    event = self.new
    event.name = doc.search(" ").text.strip
    event.price = doc.search(" ").text
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
