class DmvFest::Event
  attr_accessor :name, :ticket_type, :ticket_price, :line_up, :the_scene, :url

  def initialize(name, ticket_type, ticket_price, line_up, url)
    @name = name
    @ticket_type = ticket_type
    @ticket_price = ticket_price
    @line_up = line_up
    @url = url
  end


  
end
