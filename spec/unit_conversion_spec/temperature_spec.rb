require 'spec_helper'

describe UnitConversion do
  ###########################
  # TEMPERATURE CONVERSIONS #
  ###########################

  temperature_subject = UnitConversion.new(0)

  it '#celcius_to_kelvin' do
    expect(temperature_subject.celcius_to_kelvin).to eq 273.15
  end

  it '#fahrenheit_to_kelvin' do
    expect(temperature_subject.fahrenheit_to_kelvin).to eq 255.3722222222222
  end

  it '#kelvin_to_celcius' do
    expect(temperature_subject.kelvin_to_celcius).to eq -273.15
  end

  it '#kelvin_to_fahrenheit' do
    expect(temperature_subject.kelvin_to_fahrenheit).to eq -459.67
  end

  it '#kelvin_to_rankine' do
    expect(temperature_subject.kelvin_to_rankine).to eq 0
  end

  it '#rankine_to_kelvin' do
    expect(temperature_subject.rankine_to_kelvin).to eq 0
  end

  #
  it '#celcius_to_fahrenheit' do
    expect(temperature_subject.celcius_to_fahrenheit).to eq 32
  end

  it '#fahrenheit_to_celcius' do
    expect(temperature_subject.fahrenheit_to_celcius.round(2)).to eq -17.78
  end

  it '#celcius_to_rankine' do
    expect(temperature_subject.celcius_to_rankine.round(2)).to eq 491.67
  end

  it '#rankine_to_celcius' do
    expect(temperature_subject.rankine_to_celcius).to eq -273.15
  end

  it '#rankine_to_fahrenheit' do
    expect(temperature_subject.rankine_to_fahrenheit).to eq -459.67
  end

  it '#fahrenheit_to_rankine' do
    expect(temperature_subject.fahrenheit_to_rankine).to eq 459.67
  end
end
