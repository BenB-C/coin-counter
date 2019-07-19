require 'rspec'
require 'pry'
require 'coin_counter'

describe('CoinCounter') do
  it('should return 4 quarters for 100 cents') do
    expect(CoinCounter.new(100).coin_machine).to(eq(CoinCounts.new(4, 0, 0, 0)))
  end
end
