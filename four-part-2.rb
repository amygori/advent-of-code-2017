#!/usr/bin/env ruby

input = File.open('./4-input.txt').readlines.map(&:chomp)

phrases = input.map(&:split)
count = 0
phrases.map do |phrase|
  if phrase.uniq.length == phrase.length
    phrase = phrase.map {|p| p.split('').sort.join }
    if phrase.uniq.length == phrase.length
      count +=1
    end
  end
end
puts count
