#!/usr/bin/env ruby

# 2x2 Matrix Determinant Calculator
# by Dmitry Kudriavtsev

usage = "Usage: #{$0} <a> <b> <c> <d>"

abort usage if ARGV.length != 4

args = ARGV.map {|i| i.to_f}

a, b, c, d = *args

det = a * d - b * c

puts det
