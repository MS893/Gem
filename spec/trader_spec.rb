require_relative '../lib/trader.rb'

describe "the day_trader method" do
  it "should tells the best day for buying and best for selling" do
    expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1,4])
  end
end
