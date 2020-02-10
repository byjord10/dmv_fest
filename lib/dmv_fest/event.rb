require 'pry'

class DmvFest::Event
  attr_accessor :name, :price, :line_up, :url

  def self.year
    # puts <<-DOC.gsub /^\s*/,''
    #   1. event 1
    #   2. event 2
    # DOC
    event_1 = self.new
    event_1.name = "Capital Jazz Fest"
    event_1.price = "TBA"
    event_1.line_up = "The talent lineup for the 2020 festival will be announced in spring 2020. Stay tuned."
    event_1.url = "https://www.capitaljazz.com/fest/2020/talent.php"

  end

end
