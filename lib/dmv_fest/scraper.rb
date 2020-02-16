# require 'byebug'
require 'nokogiri'
require 'httparty'
require_relative './lib/dmv_fest.rb'

class Scraper

attr_accessor :event_list_url
BASE_PATH = "http://metromontage.com"
event_list_url = (BASE_PATH + "/list-of-music-festivals-in-d-c-maryland-and-northern-virginia/")


  def self.scrape_events(event_list_url)
    doc = HTTParty.get(event_list_url)
    index = Nokogiri::HTML(doc)
    scraped_events = index.css("")
    scraped_events.collect do |event_
  end
end
