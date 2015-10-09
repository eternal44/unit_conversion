require 'spec_helper'

describe WeightConversion do

  # Proxy = kilogram
  o_to_kg = UnitConversion.new(1000, 'ounce')
  it 'ounce to kilogram' do
    expect(o_to_kg.to_kilogram.round(2)).to eq 28.35
  end

  p_to_kg = UnitConversion.new(1000, 'pound')
  it 'pound to kilogram' do
    expect(p_to_kg.to_kilogram.round(2)).to eq 453.59
  end

  st_to_kg = UnitConversion.new(1000, 'short_ton')
  it 'short ton to kilogram' do
    expect(st_to_kg.to_kilogram.round(2)).to eq 907184.64
  end

  lt_to_kg = UnitConversion.new(1000, 'long_ton')
  it 'long ton to kilogram' do
    expect(lt_to_kg.to_kilogram.round(2)).to eq 1016046.91
  end

  kg_to_o = UnitConversion.new(1000, 'kilogram')
  it 'kilogram to ounce' do
    expect(kg_to_o.to_ounce.round(2)).to eq 35273.96
  end

  kg_to_p = UnitConversion.new(1000, 'kilogram')
  it 'kilogram to pound' do
    expect(kg_to_p.to_pound.round(2)).to eq 2204.62
  end

  kg_to_st = UnitConversion.new(1000, 'kilogram')
  it 'kilogram to short ton' do
    expect(kg_to_st.to_short_ton.round(2)).to eq 1.10
  end

  kg_to_lt = UnitConversion.new(1000, 'kilogram')
  it 'kilogram to long ton' do
    expect(kg_to_lt.to_long_ton.round(2)).to eq 0.98
  end

  # Requests

  o_to_p = UnitConversion.new(1000, 'ounce')
  it 'ounce to pound' do
    expect(o_to_p.to_pound.round(2)).to eq 62.5
  end

  o_to_lt = UnitConversion.new(1000, 'ounce')
  it 'ounce to long ton' do
    expect(o_to_lt.to_long_ton.round(2)).to eq 0.03
  end

  o_to_st = UnitConversion.new(1000, 'ounce')
  it 'ounce to short ton' do
    expect(o_to_st.to_short_ton.round(2)).to eq 0.03
  end

  p_to_o = UnitConversion.new(1000, 'pound')
  it 'pound to ounce' do
    expect(p_to_o.to_ounce.round).to eq 16000
  end

  p_to_lt = UnitConversion.new(1000, 'pound')
  it 'pound to long ton' do
    expect(p_to_lt.to_long_ton.round(2)).to eq 0.45
  end

  p_to_st = UnitConversion.new(1000, 'pound')
  it 'pound to short ton' do
    expect(p_to_st.to_short_ton.round(2)).to eq 0.5
  end

  lt_to_o = UnitConversion.new(1000, 'long_ton')
  it 'long ton to ounce' do
    expect(lt_to_o.to_ounce.round).to eq 35840000
  end

  lt_to_p = UnitConversion.new(1000, 'long_ton')
  it 'long ton to pound' do
    expect(lt_to_p.to_pound.round(2)).to eq 2240000
  end

  lt_to_st = UnitConversion.new(1000, 'long_ton')
  it 'long ton to short ton' do
    expect(lt_to_st.to_short_ton.round(2)).to eq 1120
  end

  st_to_o = UnitConversion.new(100, 'short_ton')
  it 'short ton to ounce' do
    expect(st_to_o.to_ounce.round).to eq 3200000
  end

  st_to_p = UnitConversion.new(1000, 'short_ton')
  it 'short ton to pound' do
    expect(st_to_p.to_pound.round).to eq 2000000
  end

  st_to_lt = UnitConversion.new(1000, 'short_ton')
  it 'short ton to long ton' do
    expect(st_to_lt.to_long_ton.round(2)).to eq 892.86
  end
end
