class DmvFest::Event
  attr_accessor :name, :price, :line_up, :url

  def self.festival_list
    puts <<-DOC.gsub /^\s*/,''
      1. Capital Jazz Fest
      2. Broccoli City Fest
      3. Something in the Water
      4. Moonrise Fest
    DOC
    
    event_1 = self.new
    event_1.name = "Capital Jazz Fest"
    event_1.price = "$"
    event_1.line_up = ""
    event_1.url = "https://www.capitaljazz.com/fest/2020/talent.php"

    event_2 = self.new
    event_2.name = "Broccoli City Fest"
    event_2.price = "$"
    event_2.line_up = ""
    event_2.url = "https://www.bcfestival.com/"

    [event_1, event_2]

  end


end
