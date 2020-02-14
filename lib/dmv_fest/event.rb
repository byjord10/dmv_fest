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

    def event_list
      @event
    end

    def self.all
       @@all << scrape_event_by_all
    end

    def self.scrape_event_by_name
      self.all.detect do |event|
        @event.name == name
      end
    end

  end
