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
      @unit = 'kilometer per hour'
      @value = proc do |n|
        n * 0.277778
      end .call(@value)
    end

    def to_kilometers_per_second
      @unit = 'kilmoeters per second'
      @value = ->(n) { n / 1000.0 }.call(@value)
    end

    ############################
    # OLD CODE BELOW THIS LINE #
    ############################

    def to_meter_per_second
      case @unit
      when 'mile_per_second'
        @measurement *= 0.3048 * 5280
      when 'mile_per_hour'
        @measurement *= 0.44704
      when 'kilometer_per_hour'
        @measurement *= 0.277778
      when 'knot'
        @measurement *= 0.514444
      when 'kilometer_per_second'
        @measurement *= 1000.0
      end
    end

    def to_kilometer_per_second
      if @unit == 'meter_per_second'
        @measurement /= 1000
      else
        self.to_meter_per_second
        @unit = 'meter_per_second'
        self.to_kilometer_per_second
      end
    end

    def to_kilometer_per_hour
      if @unit == 'meter_per_second'
        @measurement *= 3.6
      else
        self.to_meter_per_second
        @unit = 'meter_per_second'
        self.to_kilometer_per_hour
      end
    end

    def to_knot
      if @unit == 'meter_per_second'
        @measurement *= 1.94384449
      else
        self.to_meter_per_second
        @unit = 'meter_per_second'
        self.to_knot
      end
    end

    def to_mile_per_second
      if @unit == 'meter_per_second'
        @measurement *= 2.23693629 / 60 / 60
      else
        self.to_meter_per_second
        @unit = 'meter_per_second'
        self.to_mile_per_second
      end
    end

    def to_mile_per_hour
      if @unit == 'meter_per_second'
        @measurement *= 2.23693629
      else
        self.to_meter_per_second
        @unit = 'meter_per_second'
        self.to_mile_per_hour
      end
    end
  end

end
