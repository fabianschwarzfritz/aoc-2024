#!/usr/bin/env ruby

require './input'

left = []
right = []

# split the input
input.split("\n").each do |line|
  s = line.split(" ")
  left << s[0].to_i
  right << s[-1].to_i
end

# Count left and right
sum = 0

left.count.times do |i|
  raise "input parsing wrong" unless left.count == right.count
  lmin = left.min
  rmin = right.min
  left.delete_at(left.index(lmin))
  right.delete_at(right.index(rmin))
  sum += (lmin - rmin).abs
end

puts "Result aoc day 1:\n#{sum}"

