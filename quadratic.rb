#!/usr/bin/ruby

if ARGV.length < 3 || ARGV.length > 4
	STDERR << "Wrong number of arguments!\n"
	exit 1
end

a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f

if ARGV.length == 4 then
	if ARGV[3] == "-x" then
		puts "x = "+ ((-b + Math.sqrt(b**2 - 4*a*c)) / 2*a).to_s
		puts "x = "+ ((-b - Math.sqrt(b**2 - 4*a*c)) / 2*a).to_s
		exit 1
	else
		STDERR << "Incorrect arguments!\n"
		exit 2
	end
end

disc = b**2 - 4*a*c
d_str = (disc >= 0) ? (Math.sqrt(disc) % 1 == 0) ? Math.sqrt(disc).to_i : "√#{disc}" : "√#{disc}"

s = "#{-b} ± #{d_str}"
d = "#{2*a}"
puts "\e[4m#{s}\e[0m"
#puts "─"*(s.length)
puts d.center s.length

puts "x = #{(-b + Math.sqrt(disc)) / (2 * a)}, x = #{(-b - Math.sqrt(disc)) / (2 * a)}"
