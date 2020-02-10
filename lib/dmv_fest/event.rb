require 'pry'

class DmvFest::Event
  attr_accessor :name, :price, :line_up

  def self.year
    self.scrape_events
  end

  def self.scrape_events
    events = []
    events << self.scrape_jazz
    # events << self.scrape_broccoli

    # event_1 = self.new
    # event_1.name = "Capital Jazz Fest"
    # event_1.price = "TBA"
    # event_1.line_up = "The talent lineup for the 2020 festival will be announced in spring 2020. Stay tuned."
    # event_1.url = "https://www.capitaljazz.com/fest/2020/talent.php"

    # [event_1]
    events
    binding.pry
  end


  def self.scrape_jazz
    doc = Nokogiri::HTML(open("https://www.capitaljazz.com/fest/2020/talent.php"))

    event = self.new
    event.name = doc.search("text-center no-space-bottom").text
    event.price = doc.search("Ticket Info &amp; Prices").text
    event.line_up = doc.search("text-center").text
    event
  end
end
