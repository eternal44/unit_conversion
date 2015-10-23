require 'test_helper'
require_relative 'distance'

class TestDistance < Minitest::Test


  def test_sanity
    assert_equal to_meter[:inches][1000], 25.4
  end
end
