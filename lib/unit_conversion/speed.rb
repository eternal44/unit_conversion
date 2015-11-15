module SpeedConvertor
  # Proxy = Meter per Second

  class Speed
    attr_reader :value

    def initialize(value, unit)
      @value = value
      send("from_#{unit}")
      self
    end

    def from_kilometers_per_hour
      @unit = 'kilometers per hour'
      @value = ->(n) { n * 0.277778}.call(@value)
    end

    def from_kilometers_per_second
      @unit = 'kilometers per second'
      @value = ->(n) { n * 1000.0 }.call(@value)
    end

    def from_miles_per_hour
      @unit = 'kilometers per second'
      @value = ->(n) { n * 0.44704 }.call(@value)
    end

    def from_knot
      @unit = 'knot'
      @value = ->(n) { n * 0.514444 }.call(@value)
    end

    def from_meters_per_second
      @unit = 'meters per second'
      @value
    end

    def to_miles_per_hour
      @unit = 'miles per hour'
      @value = ->(n) { n * 2.23693629 }.call(@value)
    end

    def to_kilometers_per_second
      @unit = 'kilometers per second'
      @value = ->(n) { n / 1000.0 }.call(@value)
    end

    def to_knot
      @unit = 'knot'
      @value = ->(n) { n * 1.94384449 }.call(@value)
    end

    def to_meters_per_second
      @unit = 'meters per second'
      @value
    end

    def to_kilometers_per_hour
      @unit = 'kilometers per hour'
      @value = ->(n) { n * 3.6 }.call(@value)
    end

  end
end

