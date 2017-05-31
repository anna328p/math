#!/usr/bin/ruby

if ARGV.length < 3 || ARGV.length > 4
	STDERR << "Wrong number of arguments!\n" 
	exit 1
end

a = ARGV[0].to_i
b = ARGV[1].to_i
c = ARGV[2].to_i

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

n = b**2 - 4*a*c
sr = Math.sqrt(n)

if sr.is_a? Integer then
	str = sr
else
	str = "√#{n}"
end

s = "#{-b} ± " + str

d = "#{ 2*a }"

puts "\e[4m#{ s }\e[0m" 

puts "#{" " * (s.length / 2 - (d.length / 2))}#{d}"
