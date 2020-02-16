class DmvFest::Event

  attr_accessor :name, :location, :date, :line_up, :url

  @@events = []

  def initialize(attributes)
    attributes.each  {|key, value| self.send(("#{key}="), ("#{value}"))}
    @@events << self
  end

  def self.all
    @@events
  end

  def self.create_from_array(event_array)
    event_array.each { |attributes| self.new(attributes)}
  end 

  def self.get_event_by_name
    @@events.detect {|event| event.name == name}
  end

end
