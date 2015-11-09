module TemperatureConvertor

  class Temperature
    attr_reader :value

    def initialize(value, unit)
      @value = value
      send("from_#{unit}")
      self
    end

    def from_kelvin
      @unit = 'kelvin'
      self
    end

    def from_celcius
      @unit = 'celcius'
      @value = ->(n) { n + 273.15 }.call(@value)
    end

    def from_fahrenheit
      @unit = 'fahrenheit'
      @value = ->(n) { (n + 459.67) * 5 / 9 }.call(@value)
    end

    def from_rankin
      @unit = 'rankin'
      @value = ->(n) { n / 1.8 }.call(@value)

    end

    def to_kelvin
      @unit = 'kelvin'
      @value
      # self # commenting this line out allows test to pass
    end

    def to_celcius
      @unit = 'kelvin'
      @value = ->(n) { n - 273.15 }.call(@value)
    end

    def to_fahrenheit
      @unit = 'kelvin'
      @value = ->(n) { (n * 9 / 5.0) - 459.67 }.call(@value)
    end

    def to_rankin
      @unit = 'rankin'
      @value = ->(n) { n * 1.8 }.call(@value)
    end

    def inspect
      "#{self.class} object, with the current unit of #{@unit} and a value of #@value"
    end
  end
end

