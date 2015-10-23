require 'spec_helper'
require 'distance'

def test_sanity
  assert_equal to_meter[:inches][1000], 25.4
end
