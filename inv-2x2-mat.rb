#!/usr/bin/env ruby

require 'fractional'

# Matrix Inverse Calculator
# by Dmitry Kudriavtsev

usage = "Usage: #{$0} <a> <b> <c> <d>"

abort usage if ARGV.length != 4

args = ARGV.map {|i| i.to_f}

a, b, c, d = *args

det = a * d - b * c

a, b, c, d = d/det, -b/det, -c/det, a/det

a, b, c, d = Fractional.new(a), Fractional.new(b), Fractional.new(c), Fractional.new(d)

p_arr = [a, b, c, d]

p_arr.map! { |i| (i.to_f % 1 == 0) ? i.to_i : i.to_s }

p_arr.map!(&:to_s)

ml = p_arr.map(&:length).max

p_arr.map!{|s|s.center ml}

sep_top = '┌' + '─'*(ml+2) + '┬' + '─'*(ml+2) + '┐'
sep_mid = '├' + '─'*(ml+2) + '┼' + '─'*(ml+2) + '┤'
sep_bot = '└' + '─'*(ml+2) + '┴' + '─'*(ml+2) + '┘'

puts sep_top
puts '│ ' + p_arr[0] + ' │ ' + p_arr[1] + ' │'
puts sep_mid
puts '│ ' + p_arr[2] + ' │ ' + p_arr[3] + ' │'
puts sep_bot
