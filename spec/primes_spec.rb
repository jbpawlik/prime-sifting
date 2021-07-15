require 'rspec'
require 'primes'

describe('#find_primes') do
  it('returns primes up to two') do
    number = PrimeFinder.new(2)
    expect(number.find_primes).to(eq([2]))
  end
  it('removes all multiples of 2 other than 2') do
    number = PrimeFinder.new(8)
    expect(number.find_primes).to(eq([2,3,5,7]))
  end
  it('removes all multiples of 3 other than 3') do 
    number = PrimeFinder.new(13)
    expect(number.find_primes).to(eq([2,3,5,7,11,13]))
  end
end