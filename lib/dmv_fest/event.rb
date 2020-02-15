class DmvFest::Event
  attr_accessor :name, :location, :date, :line_up, :url

  @@name = []

  def initialize(attributes)
    attributes.each  {|key, value| self.send(("#{key}="), value)}
    @@name << self
  rescue NoMethodError

  end

  def self.all
    @@name
  end

  def save
    @@name << self
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
