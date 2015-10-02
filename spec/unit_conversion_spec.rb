require 'spec_helper'

describe UnitConversion do
  subject = UnitConversion.new(0)

  it '#celcius_to_kelvin' do
    expect(subject.celcius_to_kelvin).to eq 273.15
  end

  it '#fahrenheit_to_kelvin' do
    expect(subject.fahrenheit_to_kelvin).to eq 255.3722222222222
  end

  it '#kelvin_to_celcius' do
    expect(subject.kelvin_to_celcius).to eq -273.15
  end

  it '#kelvin_to_fahrenheit' do
    expect(subject.kelvin_to_fahrenheit).to eq -459.67
  end

  it '#kelvin_to_rankine' do
    expect(subject.kelvin_to_rankine).to eq 0
  end

  it '#rankine_to_kelvin' do
    expect(subject.rankine_to_kelvin).to eq 0
  end
end
