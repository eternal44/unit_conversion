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

  ########################
  # DISTANCE CONVERSIONS #
  ########################

  distance_subject = UnitConversion.new(1000)

  it '#feet_to_inch' do
    expect(distance_subject.feet_to_inch.round(2)).to eq 83.33
  end

  it '#inch_to_feet' do
    expect(distance_subject.inch_to_feet.round(2)).to eq 12000.0
  end

  it '#feet_to_yard' do
    expect(distance_subject.feet_to_yard.round(2)).to eq 3000.0
  end

  it '#yard_to_feet' do
    expect(distance_subject.yard_to_feet.round(2)).to eq 333.33
  end

  it '#feet_to_mile' do
    expect(distance_subject.feet_to_mile.round(2)).to eq 0.19
  end

  it '#mile_to_feet' do
    expect(distance_subject.mile_to_feet.round(2)).to eq 5280000
  end

  it '#feet_to_meter' do
    expect(distance_subject.feet_to_meter.round(2)).to eq 304.8
  end

  it '#meter_to_feet' do
    expect(distance_subject.meter_to_feet.round(2)).to eq 3280.84
  end

  # inch to m
  it '#inch_to_meter' do
    expect(distance_subject.inch_to_meter.round(2)).to eq 25.4
  end

  it '#yard_to_meter' do
    expect(distance_subject.yard_to_meter.round(2)).to eq 914.4
  end

  it '#mile_to_meter' do
    expect(distance_subject.mile_to_meter.round(2)).to eq 1609340
  end

  it '#yard_to_centimeter' do
    expect(distance_subject.yard_to_centimeter.round(2)).to eq 91440
  end

end
