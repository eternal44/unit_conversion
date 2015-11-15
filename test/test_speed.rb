require 'spec_helper'

include SpeedConvertor

describe SpeedConvertor::Speed do
  before do
    @kilometers_per_hour_speed = Speed.new(1000, 'kilometers_per_hour')
    @kilometers_per_second_speed = Speed.new(1000, 'kilometers_per_second')
    @miles_per_hour_speed = Speed.new(1000, 'miles_per_hour')
    @meters_per_second_speed = Speed.new(1000, 'meters_per_second')
    @knot_speed = Speed.new(1000, 'knot')
  end

  it '["kph", "kps"]' do
    @kilometers_per_hour_speed.to_kilometers_per_second.round(2).must_equal 0.28
  end

  it '["kph", "milesph"]' do
    @kilometers_per_hour_speed.to_miles_per_hour.round(2).must_equal 621.37
  end

  it '["kph", "knots"]' do
    @kilometers_per_hour_speed.to_knot.round(2).must_equal 539.96
  end

  it '["kph", "metersps"]' do
    @kilometers_per_hour_speed.to_meters_per_second.round(2).must_equal 277.78
  end

  it '["kps", "kph"]' do
    @kilometers_per_second_speed.to_kilometers_per_hour.round(2).must_equal 3600000
  end

  it '["kps", "milesph"]' do
    @kilometers_per_second_speed.to_miles_per_hour.round(2).must_equal 2236936.29
  end

  it '["kps", "knots"]' do
    @kilometers_per_second_speed.to_knot.round(2).must_equal 1943844.49
  end

  it '["kps", "metersps"]' do
    @kilometers_per_second_speed.to_meters_per_second.round(2).must_equal 1000000
  end

  it '["milesph", "kph"]' do
    @miles_per_hour_speed.to_kilometers_per_hour.round(2).must_equal 1609.34
  end

  it '["milesph", "kps"]' do
    @miles_per_hour_speed.to_kilometers_per_second.round(2).must_equal 0.45
  end

  it '["milesph", "knots"]' do
    @miles_per_hour_speed.to_knot.round(2).must_equal 868.98
  end

  it '["milesph", "metersps"]' do
    @miles_per_hour_speed.to_meters_per_second.round(2).must_equal 447.04
  end

  it '["knots", "kph"]' do
    @knot_speed.to_kilometers_per_hour.round(2).must_equal 1852
  end

  ["knots", "kps"]
  it '["knots", "kps"]' do
    @knot_speed.to_kilometers_per_second.round(2).must_equal 0.51
  end

  it '["knots", "milesph"]' do
    @knot_speed.to_miles_per_hour.round(2).must_equal 1150.78
  end

  it '["knots", "metersps"]' do
    @knot_speed.to_meters_per_second.round(2).must_equal 514.44
  end

  it '["metersps", "kph"]' do
    @meters_per_second_speed.to_kilometers_per_hour.round(2).must_equal 3600
  end

  it '["metersps", "kps"]' do
    @meters_per_second_speed.to_kilometers_per_second.round(2).must_equal 1.0
  end

  ["metersps", "milesph"]
  it '["metersps", "milesph"]' do
    @meters_per_second_speed.to_miles_per_hour.round(2).must_equal 2236.94
  end

  ["metersps", "knots"]
  it '["metersps", "knots"]' do
    @meters_per_second_speed.to_knot.round(2).must_equal 1943.84
  end

end

