require 'spec_helper'

describe SpeedConversion do
  ###########
  # PROXIES #
  ###########

  # meter per second is the proxy


  kph_to_mps = UnitConversion.new(1000, 'kilometer_per_hour')
  it 'km/h to meter/s ' do
    expect(kph_to_mps.to_meter_per_second.round(2)).to eq 277.78
  end

  mps_to_mps = UnitConversion.new(1000, 'mile_per_second')
  it 'mile/s to meter/s' do
    expect(mps_to_mps.to_meter_per_second.round(2)).to eq 1609344
  end

  mph_to_mps = UnitConversion.new(1000, 'mile_per_hour')
  it 'mile/h to meter/s' do
    expect(mph_to_mps.to_meter_per_second.round(2)).to eq 447.04
  end

  k_to_mps= UnitConversion.new(1000, 'knot')
  it 'knot to meter/s' do
    expect(k_to_mps.to_meter_per_second.round(2)).to eq 514.44
  end

  mps_to_kph = UnitConversion.new(1000, 'meter_per_second')
  it 'meter/s to km/h' do
    expect(mps_to_kph.to_kilometer_per_hour.round(2)).to eq 3600
  end

  mps_to_mph = UnitConversion.new(1000, 'meter_per_second')
  it 'meter/s to mile/h' do
    expect(mps_to_mph.to_mile_per_hour.round(2)).to eq 2236.94
  end

  mps_to_knot = UnitConversion.new(1000, 'meter_per_second')
  it 'meter/s to knot' do
    expect(mps_to_knot.to_knot.round(2)).to eq 1943.84
  end

  # test variable names are not private to each test so using a more
  # uniqe variable name to keep them from overwriting eachother
  # SEE:  meter/s to mile/s test
  mileps_to_meterps = UnitConversion.new(1000, 'meter_per_second')
  it 'mile/s to meter/s' do
    expect(mileps_to_meterps.to_mile_per_second.round(2)).to eq 0.62
  end


  mph_to_kps = UnitConversion.new(1000, 'mile_per_hour')
  it 'mile/h to km/s' do
    expect(mph_to_kps.to_kilometer_per_second.round(2)).to eq 0.45
  end

  mph_to_kph = UnitConversion.new(1000, 'mile_per_hour')
  it 'mile/h to km/h' do
    expect(mph_to_kph.to_kilometer_per_hour.round(2)).to eq 1609.34
  end

  mph_to_knot = UnitConversion.new(1000, 'mile_per_hour')
  it 'mile/h to knot' do
    expect(mph_to_knot.to_knot.round(2)).to eq 868.98
  end

  kps_to_mph = UnitConversion.new(1000, 'kilometer_per_second')
  it 'km/s to mile/h' do
    expect(kps_to_mph.to_mile_per_hour.round(2)).to eq 2236936.29
  end

  kps_to_kph = UnitConversion.new(1000, 'kilometer_per_second')
  it 'km/s to km/h' do
    expect(kps_to_kph.to_kilometer_per_hour.round(2)).to eq 3600000
  end

  kps_to_knot = UnitConversion.new(1000, 'kilometer_per_second')
  it 'km/s to knot' do
    expect(kps_to_knot.to_knot.round(2)).to eq 1943844.49
  end

  kph_to_mph = UnitConversion.new(1000, 'kilometer_per_hour')
  it 'km/h to mile/h' do
    expect(kph_to_mph.to_mile_per_hour.round(2)).to eq 621.37
  end

  kph_to_kps = UnitConversion.new(1000, 'kilometer_per_hour')
  it 'km/h to km/s' do
    expect(kph_to_kps.to_kilometer_per_second.round(2)).to eq 0.28 # check later
  end

  kph_to_knot = UnitConversion.new(1000, 'kilometer_per_hour')
  it 'km/h to knot' do
    expect(kph_to_knot.to_knot.round(2)).to eq 539.96
  end

  knot_to_mph = UnitConversion.new(1000, 'knot')
  it 'knot to mile/h' do
    expect(knot_to_mph.to_mile_per_hour.round(2)).to eq 1150.78
  end

  knot_to_kps = UnitConversion.new(1000, 'knot')
  it 'knot to km/s' do
    expect(knot_to_kps.to_kilometer_per_second.round(2)).to eq 0.51
  end

  knot_to_kph = UnitConversion.new(1000, 'knot')
  it 'knot to km/h' do
    expect(knot_to_kph.to_kilometer_per_hour.round(2)).to eq 1852
  end
end
