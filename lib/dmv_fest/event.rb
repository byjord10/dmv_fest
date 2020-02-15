class DmvFest::Event

  attr_accessor :name, :location, :date, :line_up, :url

  @@name = []

  def initialize(attributes)
    attributes.each  {|key, value| self.send(("#{key}="), value)}
    @@name << self
    @event = []
  end

  def self.all
    @@name
  end

  def location
    @location
  end

  def date
    @date
  end

  def line_up
    @line_up
  end

  def self.get_event_by_name
    @@name.detect {|event| event.name == name}
  end

end
