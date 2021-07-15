require 'pry'

class PrimeFinder
  def initialize(number)
    @number = number
  end

  def find_primes
    num_array=[]
    (2..@number).each {|i| num_array.push(i)}
    return num_array
  end
end