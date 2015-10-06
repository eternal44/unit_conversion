require 'spec_helper'

describe TemperatureConversion do

  ###########
  # PROXIES #
  ###########

  f_to_k = UnitConversion.new(0, 'fahrenheit')
  it '#fahrenheit_to_kelvin' do
    expect(f_to_k.to_kelvin.round(2)).to eq 255.37
  end

  k_to_f = UnitConversion.new(0, 'kelvin')
  it '#kelvin_to_fahrenheit' do
    expect(k_to_f.to_fahrenheit.round(2)).to eq -459.67
  end

  k_to_c = UnitConversion.new(0, 'kelvin')
  it '#kelvin_to_celcius' do
    expect(k_to_c.to_celcius.round(2)).to eq -273.15
  end

  c_to_k = UnitConversion.new(0, 'celcius')
  it '#celcius_to_kelvin' do
    expect(c_to_k.to_kelvin.round(2)).to eq 273.15
  end

  r_to_k = UnitConversion.new(0, 'rankine')
  it '#rankine_to_kelvin' do
    expect(r_to_k.to_kelvin.round(2)).to eq 0
  end

  k_to_r = UnitConversion.new(0, 'kelvin')
  it '#kelvin_to_rankine' do
    expect(k_to_r.to_rankine.round(2)).to eq 0
  end

  ############
  # REQUESTS #
  ############

  f_to_c = UnitConversion.new(0, 'fahrenheit')
  it '#fahrenheit_to_celcius' do
    expect(f_to_c.to_celcius.round(2)).to eq -17.78
  end

  c_to_f = UnitConversion.new(0, 'celcius')
  it '#celcius_to_fahrenheit' do
    expect(c_to_f.to_fahrenheit.round(2)).to eq 32
  end

  c_to_r = UnitConversion.new(0, 'celcius')
  it '#celcius_to_rankine' do
    expect(c_to_r.to_rankine.round(2)).to eq 491.67
  end

  r_to_c = UnitConversion.new(0, 'rankine')
  it '#rankine_to_celcius' do
    expect(r_to_c.to_celcius.round(2)).to eq -273.15
  end

  r_to_f = UnitConversion.new(0, 'rankine')
  it '#rankine_to_fahrenheit' do
    expect(r_to_f.to_fahrenheit.round(2)).to eq -459.67
  end

  f_to_r = UnitConversion.new(0, 'fahrenheit')
  it '#fahrenheit_to_rankine' do
    expect(f_to_r.to_rankine.round(2)).to eq 459.67
  end
end
