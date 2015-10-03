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
    @measurement / 1.8
  end

  ########################
  # DISTANCE CONVERSIONS #
  ########################

  def feet_to_inch
    @measurement / 12.0
  end

  def inch_to_feet
    @measurement * 12
  end

  def feet_to_yard
    @measurement * 3
  end

  def yard_to_feet
    @measurement / 3
  end

  def feet_to_mile
    @measurement / 5280.0
  end

  def mile_to_feet
    @measurement * 5280.0
  end

  def feet_to_meter
    @measurement * 0.3048
  end

  def meter_to_feet
    @measurement / 0.3048
  end

end
