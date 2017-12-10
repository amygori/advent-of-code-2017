# For each row, determine the difference between the largest value and the smallest value; the checksum is the sum of all of these differences.
require 'pry'
# require_relative './two_input.rb'

class Two
  def self.checksum
    input = self.get_input
    array_to_sum = []
    input.map do |a|
      array_to_sum << a.max - a.min
    end
    array_to_sum.sum
  end

  def self.evenly_divisible_checksum
    input = self.get_input
    array_to_sum =[]
    input.map do |a|
      a = a.combination(2).to_a
      a.map do |pair|
        pair = pair.sort{ |a, b| b <=> a }
        if pair[0] % pair[1] == 0
          array_to_sum << pair[0] / pair[1]
        end
      end
    end
    array_to_sum.sum
  end

  def self.get_input
    input = File.open('./two_input.txt', "r").readlines.map(&:chomp)
    input = input.map(&:split)
    input = input.map do |a|
      a.map(&:to_i)
    end
  end

end
