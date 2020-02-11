module Event_info

  def self.scrape_event_1(event_1)

    doc = Nokogiri::HTML(open("https://www.capitaljazz.com/fest/2020/talent.php"))

    event_1 = self.new
    event_1.name = doc.css("text-center no-space-bottom").text.strip
    event_1.price = doc.css("Ticket Info &amp; Prices").text
    event_1.line_up = doc.css("text-center").text
    event_1.url = doc.csss("capitaljazz.com")

    event_1 << @@all
  end

  def self.scrape_event_2(event_2)
    doc = Nokogiri::HTML(open())

    event = self.new
    event.name = doc.search(" ").text.strip
    event.price = doc.search("col-sm-2 nopadding text-center xtix-price ").text
    event.line_up = doc.search("").text
    event.url = " "

    event
  end

  def self.scrape_event_3(event_3)
    doc = Nokogiri::HTML(open())

    event = self.new
    event.name = doc.search(" ").text.strip
    event.price = doc.search(" ").text
    event.line_up = doc.search("").text
    event.url = " "

    event
  end

  def self.scrape_event_4(event_4)
    doc = Nokogiri::HTML(open())

    event = self.new
    event.name = doc.search(" ").text.strip
    event.price = doc.search(" ").text
    event.line_up = doc.search("").text
    event.url = " "

    event
  end
end



end
