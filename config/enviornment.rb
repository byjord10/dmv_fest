require_relative './dmv_fest/version'
require 'httparty'
require 'byebug'
require 'nokogiri'

# require_relative './dmv_fest/api'
require_relative './dmv_fest/cli'
require_relative './dmv_fest/event'
require_relative './dmv_fest/scrape_event'

require 'pry'

module Event
  class Error < StandardError; end

end
