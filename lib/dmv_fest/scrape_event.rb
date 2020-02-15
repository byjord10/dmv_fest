require 'httparty'
require 'nokogiri'
require 'byebug'


  def scrape_event

    url = " http://metromontage.com/list-of-music-festivals-in-d-c-maryland-and-northern-virginia/ "
    unparsed_page = HTTParty.get(url)
    parsed_page = Nokogiri::HTML(unparsed_page)
    byebug

  end

  scraper
