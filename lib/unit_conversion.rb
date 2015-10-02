require "unit_conversion/version"

class UnitConversion
  def initialize(measurement)
    @measurement = measurement
  end

  def celcius_to_kelvin
    @measurement + 273.15
  end

  def celcius_to_kelvin
    @measurement+ 273.15
  end

  def fahrenheit_to_kelvin
    (@measurement + 459.67) * 5 / 9
  end

  def kelvin_to_celcius
    @measurement - 273.15
  end

  def kelvin_to_fahrenheit
    (@measurement * 9 / 5.0) - 459.67
  end

  def kelvin_to_rankine
    @measurement * 1.8
  end

  def rankine_to_kelvin
    @measurement/ 1.8
  end
end
