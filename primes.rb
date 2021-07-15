#!/usr/bin/env ruby
require './lib/primes.rb'

puts 'Enter a number to return primes up to that number'
num = PrimeFinder.new(gets.chomp.to_i)
puts num.find_primes