class DmvFest::Event
  attr_accessor :name
  attr_reader :location, :date, :line_up, :url
  #
  # ATTRIBUTES = [
  #   "name:",
  #   "location:",
  #   "date:",
  #   "ticket_type:",
  #   "ticket_price:",
  #   "line_up:",
  #   "url:"
  # ]

  @@name = []

  def initialize(attributes)
    attributes.each  {|key, value| self.send(("#{key}="), value)}
    @@name << self
  end

  def self.all
    @@name
  end

  def save
    @@name << self
  end

  # def event=(event)
  #   @event = event
  # end

  def self.scrape_event_by_name(name)
    @@name.detect {|event| event.name == name}
  end

  # def self.find_by_name(name)
  #   @@name.find {|event| event.name == name }
  # end #See if app would function without this method

  # def to_param
  #   name.downcase
  # end
  #See if app would function witout this method

end
