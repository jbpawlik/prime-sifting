require 'rspec'
require 'primes'

describe('#find_primes') do
  it('should return primes up to two') do
    number = PrimeFinder.new(2)
    expect(number.find_primes).to(eq([2]))
  end
end