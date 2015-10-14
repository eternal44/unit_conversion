require_relative "unit_conversion/version"
require_relative "unit_conversion/distance_conversion"
require_relative "unit_conversion/temperature_conversion"
require_relative "unit_conversion/weight_conversion"
require_relative "unit_conversion/speed_conversion"

class UnitConversion
  attr_accessor :measurement
  include DistanceConversion
  include TemperatureConversion
  include WeightConversion
  include SpeedConversion

  def initialize(measurement, unit)
    @measurement = measurement
    @unit = unit
  end
end
