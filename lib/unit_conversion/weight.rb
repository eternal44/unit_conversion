module WeightConversion
  # Proxy = Kilogram
  def to_kilogram
    case @unit
    when 'pound'
      @measurement *= 0.45359
    when 'ounce'
      @measurement *= 0.02835
    when 'short_ton'
      @measurement *= 907.18464
    when 'long_ton'
      @measurement *= 1016.04691
    end
  end

  def to_long_ton
    if @unit == 'kilogram'
      @measurement *= 0.000984207
    else
      self.to_kilogram
      @unit = 'kilogram'
      self.to_long_ton
    end
  end

  def to_short_ton
    if @unit == 'kilogram'
      @measurement *= 0.00110231
    else
      self.to_kilogram
      @unit = 'kilogram'
      self.to_short_ton
    end
  end

  def to_pound
    if @unit == 'kilogram'
      @measurement *= 2.2046226218
    else
      self.to_kilogram
      @unit = 'kilogram'
      self.to_pound
    end
  end

  def to_ounce
    if @unit == 'kilogram'
      @measurement *= 35.27396195
    else
      self.to_kilogram
      @unit = 'kilogram'
      self.to_ounce
    end
  end
end
