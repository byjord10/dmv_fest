require 'HTTParty'
require 'Nokogiri'

class DmvFest::ScrapeEvent

  attr_accessor :parse_page

  def initialize
    doc = HTTParty.get("")


    def scrape_event_by_name = {

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

      doc = Nokogiri::HTML(open("https://somethinginthewater.frontgatetickets.com/"))

      event.name = doc.search("header-image").text.strip
      event.location = doc.search("location").text
      event.ticket_type = doc.search("omnibox__listing__section").text
      event.ticket_price = doc.search("event-price col-xs-12 nopadding").text
      event.line_up = doc.search("").text
      event.url = "https://seatgeek.com/something-in-the-water-festival-tickets "
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
