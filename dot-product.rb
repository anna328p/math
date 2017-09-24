#!/usr/bin/env ruby

# Dot Product Calculator
# by Dmitry Kudriavtsev

usage = "Usage: #{$0} <arrays' length> <array 1> <array 2>"

abort usage if ARGV.length < 2
n = ARGV.shift.to_i
abort usage if ARGV.length != n*2

array1 = ARGV.slice 0, n
array2 = ARGV.slice n, ARGV.length

result = array1.map(&:to_r).zip(array2.map(&:to_r)).map{|a, b| a * b}.reduce(&:+)

result = (result.to_f % 1 == 0) ? result.to_i : result

puts "Result: #{result}"
