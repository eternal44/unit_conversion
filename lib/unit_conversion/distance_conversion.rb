module DistanceConversion
  # Proxy = Meter

  def to_meter
    case @unit
    when 'inch'
      @measurement *= 0.0254
    when 'foot'
      @measurement *= 0.3048
    when 'yard'
      @measurement *= 0.9144
    end
  end

  def to_inch
    if @unit == 'meter'
      @measurement /= 0.0254
    else
      self.to_meter
      @unit = 'meter'
      self.to_inch
    end
  end

  def to_foot
    if @unit == 'meter'
      @measurement /= 0.3048
    else
      self.to_meter
      @unit = 'meter'
      self.to_foot
    end
  end

  def to_yard
    if @unit == 'meter'
      @measurement /= 0.9144
    else
      self.to_meter
      @unit = 'meter'
      self.to_yard
    end
  end
end
