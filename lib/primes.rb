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
    num_array.each_with_index do |element, index|
      if element%3 === 0 && element !=3
        num_array.delete_at(index)
      end
    end
    num_array.each_with_index do |element, index|
      if element%5 === 0 && element !=5
        num_array.delete_at(index)
      end
    end
    num_array.each_with_index do |element, index|
      if element%7 === 0 && element !=7
        num_array.delete_at(index)
      end
    end
    return num_array
  end
end