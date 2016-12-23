class PrimeCounter
  def self.first_ten_primes(starting_value = 2)
    return "Number to low" if starting_value < 2
    primes = []
    primes << starting_value if starting_value == 2
    value = starting_value
    until primes.length == 10 do
      primes << value unless composite?(value)
      value += 1
    end
    primes
  end
  def self.composite?(value)
    return true if value.even?
    half = value / 2
    range = (3..half).to_a
    range.any? { |factor| value % factor == 0  }
  end
end
