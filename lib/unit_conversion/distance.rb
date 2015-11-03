module Convertor

  class Distance
    attr_reader :value

    def setup(value, unit)
      @value = value
      send("from_#{unit}")
      self
    end

    def from_meter
      self
    end

    def from_inch
      @unit = 'meter'
      @value = proc do |n|
        n * 0.0254
      end .call(@value)
    end

    def from_foot
      @unit = 'foot'
      @value = proc do |n|
        n * 0.3048
      end .call(@value)
    end

    def from_yard
      @unit = 'yard'
      @value = proc do |n|
        n * 0.9144
      end .call(@value)
    end



    def to_meter
      @unit = "meter"
      @value
      self
    end

    def to_inch
      @unit = 'inch'
      @value = ->(n) { n / 0.0254 }.call(@value)
    end

    def to_foot
      @unit = 'foot'
      @value = ->(n) { n / 0.3048 }.call(@value)
    end

    def to_yard
      @unit = 'yard'
      @value = ->(n) { n / 0.9144 }.call(@value)
    end

    def to_s
      [@value, @unit].join(' ')
    end
    def to_f
      to_s.to_f
    end

     def inspect
       "#{self.class} object, with the current unit of #{@unit} and a value of #@value"
     end
  end
end
