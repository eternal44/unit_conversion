require 'spec_helper'

describe SpeedConversion do
  ###########
  # PROXIES #
  ###########

  # meter per second is the proxy

  kph_to_mps = UnitConversion.new(1000, 'kilometer_per_hour')
  it 'kilometer per hour to meter per second' do
    expect(kph_to_mps.to_meter_per_second.round(2)).to eq 277.78
  end

  mile_ps = UnitConversion.new(1000, 'mile_per_second')
  it 'mile per second to meter per second' do
    expect(mile_ps.to_meter_per_second.round(2)).to eq 1609344
  end

  mph = UnitConversion.new(1000, 'mile_per_hour')
  it 'mile per hour to meter per second' do
    expect(mph.to_meter_per_second.round(2)).to eq 447.04
  end

  knot= UnitConversion.new(1000, 'knot')
  it 'knot to meter per second' do
    expect(knot.to_meter_per_second.round(2)).to eq 514.44
  end

  mpsto_kph = UnitConversion.new(1000, 'meter_per_second')
  it 'meter per second to kilometer per hour' do
    expect(mpsto_kph.to_kilometer_per_hour.round(2)).to eq 3600
  end

  mps_to_mph = UnitConversion.new(1000, 'meter_per_second')
  it 'meter per second to mile per hour' do
    expect(mps_to_mph.to_mile_per_hour.round(2)).to eq 2236.94
  end

  mps_to_knot = UnitConversion.new(1000, 'meter_per_second')
  it 'meter per second to knot' do
    expect(mps_to_knot.to_knot.round(2)).to eq 1943.84
  end

  mps = UnitConversion.new(1000, 'meter_per_second')
  it 'meter per second to mile per second' do
    expect(mps.to_mile_per_second.round(2)).to eq 0.62
  end


  mph_to_kps = UnitConversion.new(1000, 'mile_per_hour')
  it 'mph_to_kps' do
    expect(mph_to_kps.to_kilometer_per_second.round(2)).to eq 0.45
  end

  mph_to_kph = UnitConversion.new(1000, 'mile_per_hour')
  it 'mph_to_kph' do
    expect(mph_to_kph.to_kilometer_per_hour.round(2)).to eq 1609.34
  end

  mph_to_knot = UnitConversion.new(1000, 'mile_per_hour')
  it 'mph_to_knot' do
    expect(mph_to_knot.to_knot.round(2)).to eq 868.98
  end

  kps_to_mph = UnitConversion.new(1000, 'kilometer_per_second')
  it 'kps_to_mph' do
    expect(kps_to_mph.to_mile_per_hour.round(2)).to eq 2236936.29
  end

  kps_to_kph = UnitConversion.new(1000, 'kilometer_per_second')
  it 'kps_to_kph' do
    expect(kps_to_kph.to_kilometer_per_hour.round(2)).to eq 3600000
  end

  kps_to_knot = UnitConversion.new(1000, 'kilometer_per_second')
  it 'kps_to_knot' do
    expect(kps_to_knot.to_knot.round(2)).to eq 1943844.49
  end

  kph_to_mph = UnitConversion.new(1000, 'kilometer_per_hour')
  it 'kph_to_mph' do
    expect(kph_to_mph.to_mile_per_hour.round(2)).to eq 621.37
  end

  kph_to_kps = UnitConversion.new(1000, 'kilometer_per_hour')
  it 'kph_to_kps' do
    expect(kph_to_kps.to_kilometer_per_second.round(2)).to eq 0.28 # check later
  end

  kph_to_knot = UnitConversion.new(1000, 'kilometer_per_hour')
  it 'kph_to_knot' do
    expect(kph_to_knot.to_knot.round(2)).to eq 539.96
  end

  knot_to_mph = UnitConversion.new(1000, 'knot')
  it 'knot_to_mph' do
    expect(knot_to_mph.to_mile_per_hour.round(2)).to eq 1150.78
  end

  knot_to_kps = UnitConversion.new(1000, 'knot')
  it 'knot_to_kps' do
    expect(knot_to_kps.to_kilometer_per_second.round(2)).to eq 0.51
  end

  knot_to_kph = UnitConversion.new(1000, 'knot')
  it 'knot_to_kph' do
    expect(knot_to_kph.to_kilometer_per_hour.round(2)).to eq 1852
  end
end
