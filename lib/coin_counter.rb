class CoinCounter
  def initialize(cents)
    @cents = cents
  end

  def coin_machine
    quarters = @cents / 25
    leftover_cents = @cents % 25
    dimes = leftover_cents / 10
    leftover_cents %= 10
    nickles = leftover_cents / 5
    leftover_cents %= 5
    pennies = leftover_cents
    CoinCounts.new(quarters, dimes, nickles, pennies)
  end
end


class CoinCounts
  attr_reader(:quarters, :dimes, :nickles, :pennies)

  def initialize(quarters, dimes, nickles, pennies)
    @quarters = quarters
    @dimes = dimes
    @nickles = nickles
    @pennies = pennies
  end

  def == (otherCoinCounts)
    @quarters = otherCoinCounts.quarters
    @dimes = otherCoinCounts.dimes
    @nickles = otherCoinCounts.nickles
    @pennies = otherCoinCounts.pennies
  end
end
