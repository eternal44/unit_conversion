module UnitConversion
  def fahrenheit_to_kelvin(value)
    (value + 459.67) * 5 / 9
  end

  def kelvin_to_celcius(value)
    value - 273.15
  end
end
