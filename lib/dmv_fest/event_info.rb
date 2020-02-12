module EventInfo
  attr_accessor :name, :price, :line_up, :url

  def initialize(name, price, line_up, url)
    @name = name
    @price = price
    @line_up = line_up
    @url = url
  end

  def event_1(event)
    doc = Nokogiri::HTML(open("https://www.capitaljazz.com/fest/2020/talent.php"))

    event = self.new
    event.name = doc.css("text-center no-space-bottom").text.strip
    event.price = doc.css("Ticket Info &amp; Prices").text
    event.line_up = doc.css("text-center").text
    event.url = doc.csss("capitaljazz.com")

  end

  def event_2(event)
    doc = Nokogiri::HTML(open())

    event = self.new
    event.name = doc.search(" ").text.strip
    event.price = doc.search("col-sm-2 nopadding text-center xtix-price ").text
    event.line_up = doc.search("").text
    event.url = " "

  end

  def event_3(event)
    doc = Nokogiri::HTML(open())

    event = self.new
    event.name = doc.search(" ").text.strip
    event.price = doc.search(" ").text
    event.line_up = doc.search("").text
    event.url = " "

  end

  def event_4(event)
    doc = Nokogiri::HTML(open())

    event = self.new
    event.name = doc.search(" ").text.strip
    event.price = doc.search(" ").text
    event.line_up = doc.search("").text
    event.url = " "

  end
end
