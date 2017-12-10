#!/usr/bin/env ruby

input = File.open('./5-input.txt').readlines.map(&:chomp)

instructions = input.map(&:to_i)
idx = 0
steps = 0

while idx < instructions.length
  jump = instructions[idx]
  instructions[idx] += 1
  idx += jump
  steps += 1
end

puts steps


