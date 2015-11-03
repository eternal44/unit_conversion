require 'spec_helper'

include Convertor

describe Convertor::Distance do
  before do
    @inch_distance = Distance.new.setup(1000, 'inch')
    @meter_distance = Distance.new.setup(1000, 'meter')
    @foot_distance = Distance.new.setup(1000, 'foot')
    @yard_distance = Distance.new.setup(1000, 'yard')
  end

  # why don't I need 'to_f' for meter conversions?
  # ["meter", "inch"]
  it 'must be 39370.08 inches for 1000 meters' do
    @meter_distance.to_inch.round(2).must_equal 39370.08
  end

  # ["meter", "foot"]
  it 'must be 3280.84 feet for 1000 meters' do
    @meter_distance.to_foot.round(2).must_equal 3280.84
  end

  # ["meter", "yard"]
  it 'must be 1093.61 yards for 1000 meters' do
    @meter_distance.to_yard.round(2).must_equal 1093.61
  end

  # ["inch", "inch"]
  it 'must be 1k inches for 1k inches' do
    @inch_distance.to_inch.must_equal 1000
  end

  # ["inch", "meter"]
  it 'must be 25.4 meters for 1k inches' do
    @inch_distance.to_meter.to_f.must_equal 25.4
  end

  # ["inch", "yard"]
  it 'must be 27.78 yard for 1k inches' do
    @inch_distance.to_yard.to_f.round(2).must_equal 27.78
  end

 # ["inch", "foot"]
  it 'must be 83.3 feet for 1k inches' do
    @inch_distance.to_foot.to_f.round(1).must_equal 83.3
  end

  # ["foot", "meter"]
  it 'must be 304.8 meters for 1k feet' do
    @foot_distance.to_meter.to_f.round(2).must_equal 304.8
  end

  # ["foot", "inch"]
  it 'must be 12000.0 inches for 1k feet' do
    @foot_distance.to_inch.to_f.round(2).must_equal 12000.0
  end

  # ["foot", "yard"]
  it 'must be 333.33 yards for 1k feet' do
    @foot_distance.to_yard.to_f.round(2).must_equal 333.33
  end

  # ["yard", "meter"]
  it 'must be 914.4 meters for 1k yard' do
    @yard_distance.to_meter.to_f.round(2).must_equal 914.4
  end

  # ["yard", "inch"]
  it 'must be 36000.00 inches for 1k yard' do
    @yard_distance.to_inch.to_f.round(2).must_equal 36000.00
  end

  # ["yard", "foot"]
  it 'must be 3000 feet for 1k yard' do
    @yard_distance.to_foot.to_f.round(2).must_equal 3000.00
  end

  # ["yard", "yard"]
  it 'must be 1k yard for 1k yard' do
    @yard_distance.to_yard.to_f.round(2).must_equal 1000.00
  end



  it 'must be able to convert to a float' do
    @inch_distance.to_f.must_equal 25.4
  end
end

