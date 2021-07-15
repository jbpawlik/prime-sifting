require 'pry'

class PrimeFinder
  def initialize(number)
    @number = number
  end

  def find_primes
    num_array=[]
    prime = 2
    (2..@number).each {|i| num_array.push(i)}
    until prime === @number
      num_array.each_with_index do |element, index|
        if element%prime === 0 && element != prime
          num_array.delete_at(index)
        end
      end
        prime += 1
      end
      return num_array.join(", ")
    end
  end
      

    # num_array.each_with_index do |element, index|
    #   if element%2 === 0 && element !=2
    #     num_array.delete_at(index)
    #   end
    # end
    # num_array.each_with_index do |element, index|
    #   if element%3 === 0 && element !=3
    #     num_array.delete_at(index)
    #   end
    # end
    # num_array.each_with_index do |element, index|
    #   if element%5 === 0 && element !=5
    #     num_array.delete_at(index)
    #   end
    # end
    # num_array.each_with_index do |element, index|
    #   if element%7 === 0 && element !=7
    #     num_array.delete_at(index)
    #   end
    # num_array.each_with_index do |element, index|
    #   if element%11 === 0 && element !=11
    #     num_array.delete_at(index)
    #   end
    # end

