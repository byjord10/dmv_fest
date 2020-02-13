class DmvFest::ScrapeEvent


    def scrape_event = {
      "Charm City Bluegrass Festival" => {

      doc = Nokogiri::HTML(open("https://www.musicfestivalwizard.com/festivals/charm-city-bluegrass-festival-2020/"))

      event.name = doc.search("entry-title search-title").text
      event.location = doc.search("search-meta").text
      event.ticket_type = doc.search("ticket-type").text
      event.ticket_price = doc.search("ticket-price").text
      event.line_up = doc.search("strong").text
      event.url = doc.search("https://www.mt.cm/2020-charm-city-bluegrass-festival")
    },
    "Something In The Water" => {

      doc = Nokogiri::HTML(open("https://www.musicfestivalwizard.com/festivals/something-in-the-water-festival-2020/"))

      event.name = doc.search("entry-title search-title").text.strip
      event.location = doc.search("search-meta").text
      event.ticket_type = doc.search("ticket-type").text
      event.ticket_price = doc.search("ticket-price").text
      event.line_up = doc.search("").text
      event.url = " "
    },

    "" => {

      doc = Nokogiri::HTML(open())

      event = self.new
      event.name = doc.search(" ").text.strip
      event.price = doc.search(" ").text
      event.line_up = doc.search("").text
      event.url = " "
    },

    "All Things Go Fall Classic" => {

      doc = Nokogiri::HTML(open())

      event = self.new
      event.name = doc.search(" ").text.strip
      event.price = doc.search(" ").text
      event.line_up = doc.search("").text
      event.url = " "
    }
