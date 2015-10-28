require 'spec_helper'

include Convertor

describe Convertor::Distance do
  before do
    @my_distance = Distance.new.setup(1000, 'inch')
  end

  it 'must be 25.4 neters fir 1k inches' do
    @my_distance.to_inch.must_equal 1000
  end

  it 'must be able to convert to a float' do
    @my_distance.to_f.must_equal 25.4
  end
end

