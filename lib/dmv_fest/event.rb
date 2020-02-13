class DmvFest::Event
  attr_accessor :name, :location, :date, :ticket_type, :ticket_price, :line_up, :url

  def initialize(name, location, date, ticket_type, ticket_price, line_up, url)
    @name = name
    @location = location
    @date = date
    @ticket_type = ticket_type
    @ticket_price = ticket_price
    @line_up = line_up
    @url = url
  end




end
