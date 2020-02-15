require 'open-uri'
require 'nokogiri'
require 'httparty'
require 'pry'

require_relative './event.rb'

class Scraper

    doc = Nokogiri::HTML(open(" http://metromontage.com/list-of-music-festivals-in-d-c-maryland-and-northern-virginia/ "))
    binding.pry


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
end
