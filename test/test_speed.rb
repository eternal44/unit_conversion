require 'spec_helper'

include SpeedConvertor

describe SpeedConvertor::Speed do
  before do
    @kilometers_per_hour_speed = Speed.new(1000, 'kilometers_per_hour')
    # @kilometers_per_second_speed = Speed.new(1000, 'kilometers_per_second')
    # @miles_per_hour_speed = Speed.new(1000, 'miles_per_hour')
    # @meters_per_second_speed = Speed.new(1000, 'meters_per_second')
    # @knots_speed = Speed.new(1000, 'knots')
  end

  it '["kph", "kps"]' do
    @kilometers_per_hour_speed.to_kilometers_per_second.round(2).must_equal 0.28
  end

  # # ["kph", "milesph"]
  # it 'must be 39370.08 inches for 1000 meters' do
  #   @meter_distance.to_inch.round(2).must_equal 39370.08
  # end

  # # ["kph", "knots"]
  # it 'must be 39370.08 inches for 1000 meters' do
  #   @meter_distance.to_inch.round(2).must_equal 39370.08
  # end

  # # ["kph", "metersps"]
  # it 'must be 39370.08 inches for 1000 meters' do
  #   @meter_distance.to_inch.round(2).must_equal 39370.08
  # end

  # # ["kps", "kph"]
  # it 'must be 39370.08 inches for 1000 meters' do
  #   @meter_distance.to_inch.round(2).must_equal 39370.08
  # end

  # # ["kps", "milesph"]
  # it 'must be 39370.08 inches for 1000 meters' do
  #   @meter_distance.to_inch.round(2).must_equal 39370.08
  # end

  # # ["kps", "knots"]
  # it 'must be 39370.08 inches for 1000 meters' do
  #   @meter_distance.to_inch.round(2).must_equal 39370.08
  # end

  # # ["kps", "metersps"]
  # it 'must be 39370.08 inches for 1000 meters' do
  #   @meter_distance.to_inch.round(2).must_equal 39370.08
  # end

  # # ["milesph", "kph"]
  # it 'must be 39370.08 inches for 1000 meters' do
  #   @meter_distance.to_inch.round(2).must_equal 39370.08
  # end

  # # ["milesph", "kps"]
  # it 'must be 39370.08 inches for 1000 meters' do
  #   @meter_distance.to_inch.round(2).must_equal 39370.08
  # end

  # # ["milesph", "knots"]
  # it 'must be 39370.08 inches for 1000 meters' do
  #   @meter_distance.to_inch.round(2).must_equal 39370.08
  # end

  # # ["milesph", "metersps"]
  # it 'must be 39370.08 inches for 1000 meters' do
  #   @meter_distance.to_inch.round(2).must_equal 39370.08
  # end

  # # ["knots", "kph"]
  # it 'must be 39370.08 inches for 1000 meters' do
  #   @meter_distance.to_inch.round(2).must_equal 39370.08
  # end

  # # ["knots", "kps"]
  # it 'must be 39370.08 inches for 1000 meters' do
  #   @meter_distance.to_inch.round(2).must_equal 39370.08
  # end

  # # ["knots", "milesph"]
  # it 'must be 39370.08 inches for 1000 meters' do
  #   @meter_distance.to_inch.round(2).must_equal 39370.08
  # end

  # # ["knots", "milesps"]
  # it 'must be 39370.08 inches for 1000 meters' do
  #   @meter_distance.to_inch.round(2).must_equal 39370.08
  # end

  # # ["knots", "metersps"]
  # it 'must be 39370.08 inches for 1000 meters' do
  #   @meter_distance.to_inch.round(2).must_equal 39370.08
  # end

  # # ["metersps", "kph"]
  # it 'must be 39370.08 inches for 1000 meters' do
  #   @meter_distance.to_inch.round(2).must_equal 39370.08
  # end

  # # ["metersps", "kps"]
  # it 'must be 39370.08 inches for 1000 meters' do
  #   @meter_distance.to_inch.round(2).must_equal 39370.08
  # end

  # # ["metersps", "milesph"]
  # it 'must be 39370.08 inches for 1000 meters' do
  #   @meter_distance.to_inch.round(2).must_equal 39370.08
  # end

  # # ["metersps", "knots"]
  # it 'must be 39370.08 inches for 1000 meters' do
  #   @meter_distance.to_inch.round(2).must_equal 39370.08
  # end

  # # ["kph", "milesps"]
  # it 'must be 39370.08 inches for 1000 meters' do
  #   @meter_distance.to_inch.round(2).must_equal 39370.08
  # end

  # # ["kps", "milesps"]
  # it 'must be 39370.08 inches for 1000 meters' do
  #   @meter_distance.to_inch.round(2).must_equal 39370.08
  # end

  # # ["milesph", "milesps"]
  # it 'must be 39370.08 inches for 1000 meters' do
  #   @meter_distance.to_inch.round(2).must_equal 39370.08
  # end

end

