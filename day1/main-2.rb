#!/usr/bin/env ruby

require 'net/http'
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

left.each do |l|
  sum += l * right.count(l)
end

puts "Result aoc day 1 part 2:\n#{sum}"

