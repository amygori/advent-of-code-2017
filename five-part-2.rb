input = File.open('./5-input.txt').readlines.map(&:chomp)

instructions = input.map(&:to_i)
idx = 0
steps = 0

while idx < instructions.length
  jump = instructions[idx]
  if instructions[idx] >= 3
    instructions[idx] -=1
  else
    instructions[idx] += 1
  end
  idx += jump
  steps += 1
end

puts steps