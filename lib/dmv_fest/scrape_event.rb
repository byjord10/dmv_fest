require 'HTTParty'
require 'Nokogiri'

class DmvFest::ScrapeEvent

  attr_accessor :parse_page

  deff initialize
    doc = HTTParty.get("http://metromontage.com/list-of-music-festivals-in-d-c-maryland-and-northern-virginia/")
    @parse_page ||= Nokogiri::HTML(doc)

  end
end 


      doc = Nokogiri::HTML(open(" "))

      event.name = doc.search("").text
      event.location = doc.search("").text
      event.ticket_type = doc.search("").text
      event.ticket_price = doc.search("").text
      event.line_up = doc.search("").text
      event.url = doc.search("")
