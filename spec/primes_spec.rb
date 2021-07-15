require 'rspec'
require 'primes'

describe('#find_primes') do
  it('returns primes up to two') do
    number = PrimeFinder.new(2)
    expect(number.find_primes).to(eq("2"))
  end
  it('removes all multiples of 2 other than 2') do
    number = PrimeFinder.new(8)
    expect(number.find_primes).to(eq("2, 3, 5, 7"))
  end
  it('removes all multiples of 3 other than 3') do
    number = PrimeFinder.new(9)
    expect(number.find_primes).to(eq("2, 3, 5, 7"))
  end
  it('removes all multiples of 5 other than 5') do
    number = PrimeFinder.new(11)
    expect(number.find_primes).to(eq("2, 3, 5, 7, 11"))
  end
  it('removes all multiples of 7 other than 7') do
    number = PrimeFinder.new(15)
    expect(number.find_primes).to(eq("2, 3, 5, 7, 11, 13"))
  end
  it('returns all primes up to 100') do
    number = PrimeFinder.new(100)
    expect(number.find_primes).to(eq("2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97"))
  end
end

