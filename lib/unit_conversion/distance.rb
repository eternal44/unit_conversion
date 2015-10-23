module Distance
  meter_to_inch = Proc.new do |n|
    n * 0.0254
  end

  to_meter = { inches: meter_to_inch }
  # puts to_meter[:inches].call( 1000 )
end

