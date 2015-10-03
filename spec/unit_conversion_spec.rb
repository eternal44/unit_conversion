require 'spec_helper'

describe UnitConversion do
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

  ########################
  # DISTANCE CONVERSIONS #
  ########################

  distance_subject = UnitConversion.new(5280.0)

  it '#feet_to_inch' do
    expect(distance_subject.feet_to_inch).to eq 440.0
  end

  it '#inch_to_feet' do
    expect(distance_subject.inch_to_feet).to eq 63360.0
  end

  it '#feet_to_yard' do
    expect(distance_subject.feet_to_yard).to eq 15840
  end

  it '#yard_to_feet' do
    expect(distance_subject.yard_to_feet).to eq 1760.0
  end

  it '#feet_to_mile' do
    expect(distance_subject.feet_to_mile).to eq 1
  end

  it '#mile_to_feet' do
    expect(distance_subject.mile_to_feet).to eq 27878400.0
  end

  it '#feet_to_meter' do
    expect(distance_subject.feet_to_meter).to eq 1609.344
  end

  it '#meter_to_feet' do
    expect(distance_subject.meter_to_feet).to eq 17322.83464566929
  end
end
