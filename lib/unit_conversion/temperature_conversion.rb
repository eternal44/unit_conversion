module TemperatureConversion
  # Proxy = Kelvin
  def to_kelvin
    case @unit
    when 'celcius'
      @measurement += 273.15
    when 'rankine'
      @measurement /= 1.8
    when 'fahrenheit'
      @measurement = (@measurement + 459.67) * 5 / 9
    end
  end

  def to_celcius
    if @unit == 'kelvin'
      @measurement -= 273.15
    else
      self.to_kelvin
      @unit = 'kelvin'
      self.to_celcius
    end
  end

  def to_fahrenheit
    if @unit == 'kelvin'
      @measurement = (@measurement * 9 / 5.0) - 459.67
    else
      self.to_kelvin
      @unit = 'kelvin'
      self.to_fahrenheit
    end
  end

  def to_rankine
    if @unit == 'kelvin'
      @measurement *= 1.8
    else
      self.to_kelvin
      @unit = 'kelvin'
      self.to_rankine
    end
  end
end

