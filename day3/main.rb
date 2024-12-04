#!/usr/bin/env ruby
input = File.read('input.txt')

result = 0

muls = input.scan(/mul\((\d{1,3}),(\d{1,3})\)/)
muls.each do |m|
  result += m[0].to_i *  m[1].to_i
end

puts "Result: #{result}"
