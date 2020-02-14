class DmvFest::Event
  attr_accessor :name, :location, :date, :ticket_type, :ticket_price, :line_up, :url

  @@name = []


  def initialize(attributes)
    attributes.each {|key, value|
      begin
        self.send(("#{key}="), value)
        @@name << name
      end
      }
    end

    def self.all
    @@name
    end

    def save
      @@name << self
    end

    def self.scrape_event_by_name
      self.all.detect do |event|
        @@name == name
      end
    end

    def self.find_by_name(name)
      @@name.find {|event| event.name == name }
    end
  end 
