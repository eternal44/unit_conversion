module TemperatureConversion
  # Proxy = Kelvin

  ##############
  # SECOND TRY #
  ##############
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
    case @unit
    when 'kelvin'
      @measurement -= 273.15
    when 'fahrenheit'
      self.to_kelvin
      @unit = 'kelvin'
      self.to_celcius
    end
  end

  #############
  # FIRST TRY #
  #############

  # def celcius_to_kelvin
  #   @measurement += 273.15
  # end

  # def kelvin_to_celcius
  #   @measurement -= 273.15
  # end

  # def fahrenheit_to_celcius
  #   self.fahrenheit_to_kelvin
  #   self.kelvin_to_celcius
  # end

  # def fahrenheit_to_kelvin
  #   @measurement += 459.67
  #   @measurement *= 5
  #   @measurement /= 9
  # end

  # def kelvin_to_fahrenheit
  #   (@measurement * 9 / 5.0) - 459.67
  # end

  #######
  # END #
  #######

  # def rankine_to_kelvin(value)
  #   value / 1.8
  # end

  # def kelvin_to_rankine(value)
  #   value * 1.8
  # end

  # # Requests

  # def celcius_to_fahrenheit(value)
  #   in_kelvin = celcius_to_kelvin(value)
  #   kelvin_to_fahrenheit(in_kelvin)
  # end

  # def celcius_to_rankine(value)
  #   in_kelvin = celcius_to_kelvin(value)
  #   kelvin_to_rankine(in_kelvin)
  # end

  # def rankine_to_celcius(value)
  #   in_kelvin = rankine_to_kelvin(value)
  #   kelvin_to_celcius(in_kelvin)
  # end

  # def rankine_to_fahrenheit(value)
  #   in_kelvin = rankine_to_kelvin(value)
  #   kelvin_to_fahrenheit(in_kelvin)
  # end

  # def fahrenheit_to_rankine(value)
  #   in_kelvin = fahrenheit_to_kelvin(value)
  #   kelvin_to_rankine(in_kelvin)
  # end
end

