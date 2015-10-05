module TemperatureConversion
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
end

