class DmvFest::Event
  attr_accessor :name, :price, :line_up, :url

  @@fest = []

  def intialize(attributes)
    attributes.each {|key, value|
      begin
        self.send(("#{key}="), value)}
      @@fest << self
    end
  end

  def price
    @price
  end

  def self.all
    @@fest
  end

  def self.festival_name(name)
    self.all.detect do |festival|
      festival.name == name
    end
  end
end
