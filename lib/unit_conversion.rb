require_relative "unit_conversion/version"

class UnitConversion
  def initialize(measurement)
    @measurement = measurement
  end
  #
  ##########################
  # TEMPERATURE CONVERSION #
  ##########################

  def celcius_to_kelvin
    @measurement + 273.15
  end

  def fahrenheit_to_kelvin
    (@measurement + 459.67) * 5 / 9
  end

  def rankine_to_kelvin
    @measurement / 1.8
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

  def celcius_to_fahrenheit
    @measurement * 9/5 + 32.0
  end

  def fahrenheit_to_celcius
    (@measurement - 32.0) * 5/9
  end

  def celcius_to_rankine
    (@measurement + 273.15) * 9/5
  end

  def rankine_to_celcius
    (@measurement - 491.67) * 5/9
  end

  def rankine_to_fahrenheit
    @measurement - 459.67
  end

  def fahrenheit_to_rankine
    @measurement + 459.67
  end

  ########################
  # DISTANCE CONVERSIONS #
  ########################

  def feet_to_inch
    @measurement * 12.0
  end

  def inch_to_feet
    @measurement / 12.0
  end

  def feet_to_yard
    @measurement / 3.0
  end

  def yard_to_feet
    @measurement * 3.0
  end

  def feet_to_mile
    @measurement / 5280.0
  end

  def mile_to_feet
    @measurement * 5280.0
  end

  def meter_to_feet
    @measurement / 0.3048
  end

  def feet_to_meter
    @measurement * 0.3048
  end

  #
  def inch_to_meter
    @measurement * 0.0254
  end

  def meter_to_inch
    @measurement / 0.0254
  end

  def yard_to_meter
    @measurement * 0.9144
  end

  def meter_to_yard
    @measurement / 0.9144
  end
end
