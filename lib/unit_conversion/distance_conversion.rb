module DistanceConversion
  # Proxy = Meter

  def inch_to_meter(value)
    value *= 0.0254
  end

  def meter_to_inch(value)
    value /= 0.0254
  end

  def foot_to_meter(value)
    value *= 0.3048
  end

  def meter_to_foot(value)
    value /= 0.3048
  end

  def yard_to_meter(value)
    value *= 0.9144
  end

  def meter_to_yard(value)
    value /= 0.9144
  end


  # Requests
  def inch_to_foot(value)
    in_meters = inch_to_meter(value)
    meter_to_foot(in_meters)
  end

  def foot_to_inch(value)
    in_meters = foot_to_meter(value)
    meter_to_inch(in_meters)
  end

  def foot_to_yard(value)
    in_meters = foot_to_meter(value)
    meter_to_yard(in_meters)
  end

  def yard_to_foot(value)
    in_meters = yard_to_meter(value)
    meter_to_foot(in_meters)
  end

  def yard_to_inch(value)
    in_meters = yard_to_meter(value)
    meter_to_inch(in_meters)
  end

  def inch_to_yard(value)
    in_meters = inch_to_meter(value)
    meter_to_yard(in_meters)
  end



  # def mile_to_meter
  #   @measurement * 1609.34
  # end

  # def meter_to_mile
  #   @measurement / 1609.34
  # end

  # # all other conversions

  # def yard_to_centimeter
  #   # self.yard_to_meter * 100
  # end


  # def foot_to_inch
  #   # @measurement * 12.0
  #   self.foot_to_meter
  #   self.meter_to_inch
  # end
  # def foot_to_mile
  #   @measurement / 5280.0
  # end

  # def mile_to_foot
  #   @measurement * 5280.0
  # end


end
