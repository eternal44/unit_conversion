require 'spec_helper'

describe DistanceConversion do

  ###########
  # PROXIES #
  ###########

  i_to_m = UnitConversion.new(1000, 'inch')
  it '#inch_to_meter' do
    expect(i_to_m.to_meter.round(2)).to eq 25.4
  end

  m_to_i = UnitConversion.new(1000, 'meter')
  it '#meter_to_inch' do
    expect(m_to_i.to_inch.round(2)).to eq 39370.08
  end

  f_to_m = UnitConversion.new(1000, 'foot')
  it '#foot_to_meter' do
    expect(f_to_m.to_meter.round(2)).to eq 304.8
  end

  m_to_f = UnitConversion.new(1000, 'meter')
  it '#meter_to_foot' do
    expect(m_to_f.to_foot.round(2)).to eq 3280.84
  end

  y_to_m = UnitConversion.new(1000, 'yard')
  it '#yard_to_meter' do
    expect(y_to_m.to_meter.round(2)).to eq 914.4
  end

  m_to_y = UnitConversion.new(1000, 'meter')
  it '#meter_to_yard' do
    expect(m_to_y.to_yard.round(2)).to eq 1093.61
  end

  # ############
  # # REQUESTS #
  # ############

  f_to_i = UnitConversion.new(1000, 'foot')
  it '#foot_to_inch' do
    expect(f_to_i.to_inch.round(2)).to eq 12000.0
  end

  i_to_f = UnitConversion.new(1000, 'inch')
  it '#inch_to_foot' do
    expect(i_to_f.to_foot.round(2)).to eq 83.33
  end

  f_to_y = UnitConversion.new(1000, 'foot')
  it '#foot_to_yard' do
    expect(f_to_y.to_yard.round(2)).to eq 333.33
  end

  y_to_f = UnitConversion.new(1000, 'yard')
  it '#yard_to_foot' do
    expect(y_to_f.to_foot.round(2)).to eq 3000.0
  end

  y_to_i = UnitConversion.new(1000, 'yard')
  it '#yard_to_inch' do
    expect(y_to_i.to_inch.round(2)).to eq 36000.0
  end

  i_to_y = UnitConversion.new(1000, 'inch')
  it '#inch_to_yard' do
    expect(i_to_y.to_yard.round(2)).to eq 27.78
  end
end

