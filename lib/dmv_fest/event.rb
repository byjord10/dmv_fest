class DmvFest::Event
  attr_accessor :name, :ticket_type, :ticket_price, :line_up, :the_scene, :url

  def initialize(name, titcket_type, ticket_price, line_up, url)
    @name = name
    @ticket_type = ticket_type
    @ticket_price = ticket_price
    @line_up = line_up
    @url = url
  end


  def self.scrape_event_1
    doc = Nokogiri::HTML(open("https://www.mt.cm/2020-charm-city-bluegrass-festival"))
  binding.pry

    event = self.new
    event.name = doc.search("title").text
    event.ticket_type = doc.search("ticket-type").text
    event.ticket_price = doc.search("ticket-price").text
    event.line_up = doc.search("strong").text
    event.url = doc.search("https://www.mt.cm/2020-charm-city-bluegrass-festival")
  end

  def self.scrape_event_2
    doc = Nokogiri::HTML(open())

    event = self.new
    event.name = doc.search(" ").text.strip
    event.price = doc.search("col-sm-2 nopadding text-center xtix-price ").text
    event.line_up = doc.search("").text
    event.url = " "

  end

  def self.scrape_event_3
    doc = Nokogiri::HTML(open())

    event = self.new
    event.name = doc.search(" ").text.strip
    event.price = doc.search(" ").text
    event.line_up = doc.search("").text
    event.url = " "

  end

  def self.scrape_event_4
    doc = Nokogiri::HTML(open())

    event = self.new
    event.name = doc.search(" ").text.strip
    event.price = doc.search(" ").text
    event.line_up = doc.search("").text
    event.url = " "
  end

end
