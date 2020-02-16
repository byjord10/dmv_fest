# require 'byebug'
require 'nokogiri'
require 'httparty'
# require_relative './dmv_fest.rb'

class Scraper

attr_accessor :event_list_url
BASE_PATH = "http://metromontage.com"
event_list_url = (BASE_PATH + "/list-of-music-festivals-in-d-c-maryland-and-northern-virginia/")


  def self.scrape_events(event_list_url)
    doc = HTTParty.get(event_list_url)
    index = Nokogiri::HTML(doc)
    scraped_events = index.css("")
  end
end

  #
  # def get_events
  #   self.get_page.css(".post")
  # end
  #
  # def make_list
  #   self.get_events do |post|
  #     event = Event.new
  #     event.name = post.css("Something In The Water").text
  #     event.date = post.css("Date:").text
  #     event.location = post.css("Location:").text
  #     event.line_up = post.css("Lineup:").text
  #   end
  # end

  # def print_courses
  #   self.make_list
  #   Event.all.each do |event|
  #     if event.name && event.name != ""
  #       puts "Festival: #{event.name}"
  #       puts "Location and Date: #{event.location} - #{event.date}"
  #       puts "Line Up: #{event.line_up}"
  #     end
  #   end
  # end
