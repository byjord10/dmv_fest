class DmvFest::Event
  attr_accessor :name, :location, :date, :ticket_type, :ticket_price, :line_up, :url

  @@all = []

  def initialize(attributes)
    attributes.each {|key, value|
      begin
        self.send(("#{key}="), value)
        @@all << self
      end
      }
    end

    def name
      @name
    end

    def self.all
      @@all
    end

    def self.scrape_event_by_name(name)
      self.all.detect do |event|
        event.name == name
      end
    end

  end
