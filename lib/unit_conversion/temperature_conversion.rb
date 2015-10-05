module TemperatureConversion
  # Proxy = Kelvin
  def celcius_to_kelvin(value)
    value += 273.15
  end

  def kelvin_to_celcius(value)
    value -= 273.15
  end

  def fahrenheit_to_kelvin(value)
    (value + 459.67) * 5 / 9
  end

  def kelvin_to_fahrenheit(value)
    (value * 9 / 5.0) - 459.67
  end

  def rankine_to_kelvin(value)
    value / 1.8
  end

  def kelvin_to_rankine(value)
    value * 1.8
  end

  # Requests

  def celcius_to_fahrenheit(value)
    in_kelvin = celcius_to_kelvin(value)
    kelvin_to_fahrenheit(in_kelvin)
  end

  def fahrenheit_to_celcius(value)
    in_kelvin = fahrenheit_to_kelvin(value)
    kelvin_to_celcius(in_kelvin)
  end

  def celcius_to_rankine(value)
    in_kelvin = celcius_to_kelvin(value)
    kelvin_to_rankine(in_kelvin)
  end

  def rankine_to_celcius(value)
    in_kelvin = rankine_to_kelvin(value)
    kelvin_to_celcius(in_kelvin)
  end

  def rankine_to_fahrenheit(value)
    in_kelvin = rankine_to_kelvin(value)
    kelvin_to_fahrenheit(in_kelvin)
  end

  def fahrenheit_to_rankine(value)
    in_kelvin = fahrenheit_to_kelvin(value)
    kelvin_to_rankine(in_kelvin)
  end
end

