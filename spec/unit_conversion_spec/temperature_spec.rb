require 'spec_helper'

describe TemperatureConversion do
  temperature_subject = UnitConversion.new(0)
  measurement = temperature_subject.measurement

  ###########
  # PROXIES #
  ###########

  it '#celcius_to_kelvin' do
    expect(temperature_subject.celcius_to_kelvin(measurement).round(2)).to eq 273.15
  end

  it '#kelvin_to_celcius' do
    expect(temperature_subject.kelvin_to_celcius(measurement).round(2)).to eq -273.15
  end

  it '#fahrenheit_to_kelvin' do
    expect(temperature_subject.fahrenheit_to_kelvin(measurement).round(2)).to eq 255.37
  end

  it '#kelvin_to_fahrenheit' do
    expect(temperature_subject.kelvin_to_fahrenheit(measurement).round(2)).to eq -459.67
  end

  it '#rankine_to_kelvin' do
    expect(temperature_subject.rankine_to_kelvin(measurement).round(2)).to eq 0
  end

  it '#kelvin_to_rankine' do
    expect(temperature_subject.kelvin_to_rankine(measurement).round(2)).to eq 0
  end

  ############
  # REQUESTS #
  ############

  it '#celcius_to_fahrenheit' do
    expect(temperature_subject.celcius_to_fahrenheit(measurement).round(2)).to eq 32
  end

  it '#fahrenheit_to_celcius' do
    expect(temperature_subject.fahrenheit_to_celcius(measurement).round(2)).to eq -17.78
  end

  it '#celcius_to_rankine' do
    expect(temperature_subject.celcius_to_rankine(measurement).round(2)).to eq 491.67
  end

  it '#rankine_to_celcius' do
    expect(temperature_subject.rankine_to_celcius(measurement).round(2)).to eq -273.15
  end

  it '#rankine_to_fahrenheit' do
    expect(temperature_subject.rankine_to_fahrenheit(measurement).round(2)).to eq -459.67
  end

  it '#fahrenheit_to_rankine' do
    expect(temperature_subject.fahrenheit_to_rankine(measurement).round(2)).to eq 459.67
  end
end
