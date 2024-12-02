#!/usr/bin/env ruby

require './input'

reports = []

# split the input
input.split("\n").each do |line|
  report = line.split(" ").map(&:to_i)
  reports << report
end

sum = 0

reports.each do |report|
  next unless report == report.clone.sort or report == report.clone.sort.reverse

  safe = true

  report.each_with_index do |r, i|
    next unless safe
    next unless i+1 < report.count
    n = report[i+1]
    diff = (r-n).abs
    if diff > 3 || diff == 0
      safe = false
    end
  end

  if safe
    puts "Safe array: #{report}"
    sum += 1
  end
end

puts "lines overall: #{reports.count}"
puts "Result aoc day 2:\n#{sum}"

