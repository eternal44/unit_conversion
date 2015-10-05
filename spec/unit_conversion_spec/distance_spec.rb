require 'spec_helper'

describe DistanceConversion do
  distance_subject = UnitConversion.new(1000)
  measurement = distance_subject.measurement

  ###########
  # PROXIES #
  ###########

  it '#inch_to_meter' do
    expect(distance_subject.inch_to_meter(measurement).round(2)).to eq 25.4
  end

  it '#meter_to_inch' do
    expect(distance_subject.meter_to_inch(measurement).round(2)).to eq 39370.08
  end

  it '#foot_to_meter' do
    expect(distance_subject.foot_to_meter(measurement).round(2)).to eq 304.8
  end

  it '#meter_to_foot' do
    expect(distance_subject.meter_to_foot(measurement).round(2)).to eq 3280.84
  end

  it '#yard_to_meter' do
    expect(distance_subject.yard_to_meter(measurement).round(2)).to eq 914.4
  end

  it '#meter_to_yard' do
    expect(distance_subject.meter_to_yard(measurement).round(2)).to eq 1093.61
  end


  ############
  # REQUESTS #
  ############

  it '#foot_to_inch' do
    expect(distance_subject.foot_to_inch(measurement).round(2)).to eq 12000.0
  end

  it '#inch_to_foot' do
    expect(distance_subject.inch_to_foot(measurement).round(2)).to eq 83.33
  end

  it '#foot_to_yard' do
    expect(distance_subject.foot_to_yard(measurement).round(2)).to eq 333.33
  end

  it '#yard_to_foot' do
    expect(distance_subject.yard_to_foot(measurement).round(2)).to eq 3000.0
  end

  it '#yard_to_inch' do
    expect(distance_subject.yard_to_inch(measurement).round(2)).to eq 36000.0
  end

  it '#inch_to_yard' do
    expect(distance_subject.inch_to_yard(measurement).round(2)).to eq 27.78
  end
end

