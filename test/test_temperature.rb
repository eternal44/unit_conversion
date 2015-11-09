require 'spec_helper'

include TemperatureConvertor

describe TemperatureConvertor::Distance do
  before do
    @fahrenheit_temperature = Temperature.new(0, 'fahrenheit')
    @kelvin_temperature = Temperature.new(0, 'kelvin')
    @celcius_temperature = Temperature.new(0, 'celcius')
    @rankin_temperature = Temperature.new(0, 'rankin')
  end

  # ["fahrenheit", "kelvin"]
  it 'should convert fahrenheit to kelvin' do
    @fahrenheit_temperature.to_kelvin.round(2).must_equal 255.37
  end

  # ["fahrenheit", "celcius"]
  it 'should convert fahrenheit to celcius' do
    @fahrenheit_temperature.to_celcius.round(2).must_equal -17.78
  end

  # ["fahrenheit", "rankin"]
  it 'should convert fahrenheit to rankin' do
    @fahrenheit_temperature.to_rankin.round(2).must_equal 459.67
  end

  # ["kelvin", "fahrenheit"]
  it 'should convert kelvin to fahrenheit' do
    @kelvin_temperature.to_fahrenheit.round(2).must_equal -459.67
  end

  # ["kelvin", "celcius"]
  it 'should convert kelvin to celcius' do
    @kelvin_temperature.to_celcius.round(2).must_equal -273.15
  end

  # ["kelvin", "rankin"]
  it 'should convert kelvin to rankin' do
    @kelvin_temperature.to_rankin.round(2).must_equal 0
  end

  # ["celcius", "fahrenheit"]
  it 'should convert celcius to fahrenheit' do
    @celcius_temperature.to_fahrenheit.round(2).must_equal 32
  end

  # ["celcius", "kelvin"]
  it 'should convert celcius to kelvin' do
    @celcius_temperature.to_kelvin.round(2).must_equal 273.15
  end

  # ["celcius", "rankin"]
  it 'should convert celcius to rankin' do
    @celcius_temperature.to_rankin.round(2).must_equal 491.67
  end

  # ["rankin", "fahrenheit"]
  it 'should convert rankin to fahrenheit' do
    @rankin_temperature.to_fahrenheit.round(2).must_equal -459.67
  end

  # ["rankin", "kelvin"]
  it 'should convert rankin to kelvin' do
    @rankin_temperature.to_kelvin.round(2).must_equal 0
  end

  # ["rankin", "celcius"]
  it 'should convert rankin to celcius' do
    @rankin_temperature.to_celcius.round(2).must_equal -273.15
  end

end

