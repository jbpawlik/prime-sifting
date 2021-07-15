require 'pry'

class PrimeFinder
  def initialize(number)
    @number = number
  end

  def find_primes
    num_array=[]
    (2..@number).each {|i| num_array.push(i)}
    num_array.each_with_index do |element, index|
      if element%2 === 0 && element !=2
        num_array.delete_at(index)
      end
    end
    return num_array
  end
end