#!/usr/bin/env ruby

responses = ["Side A", "Side B", "Side C", "Angle A", "Angle B", "Angle C"].map { |s|
	print "#{s}: "
	a = STDIN.gets.chomp
	if a == '?'
		nil
	else
		a.to_f
	end
}

p responses

side_a, side_b, side_c, angle_a, angle_b, angle_c = *responses
