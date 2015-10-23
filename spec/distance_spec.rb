require 'spec_helper'
require 'unit_conversion/distance'

class DistanceTest < Minitest::Test
  def test_sanity
    assert_equal to_meter[:inches][1000], 25.4
  end
end
