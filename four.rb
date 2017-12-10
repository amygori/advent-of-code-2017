#!/usr/bin/env ruby

input = File.open('./4-input.txt').readlines.map(&:chomp)

phrases = input.map(&:split)
count = 0
phrases.map do |phrase|
  if phrase.uniq.length == phrase.length
    count += 1
  end
end
puts count
