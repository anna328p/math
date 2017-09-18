#!/usr/bin/env ruby

# 3x3 Matrix Determinant Calculator
# by Dmitry Kudriavtsev

usage = "Usage: #{$0} <a> <b> <c> <d> <e> <f> <g> <h> <k>"

# ┌───┬───┬───┐
# │ a │ b │ c │
# ├───┼───┼───┤
# │ d │ e │ f │
# ├───┼───┼───┤
# │ g │ h │ k │
# └───┴───┴───┘

abort usage if ARGV.length != 9

args = ARGV.map {|i| i.to_f}

def det2x2(a, b, c, d)
	a * d - b * c
end

a, b, c, d, e, f, g, h, k = *args

det = (a * det2x2(e, f, h, k)) - (b * det2x2(d, f, g, k)) + (c * det2x2(d, e, g, h))

puts det
