#!/usr/bin/ruby

require 'curses'
include Curses

# Linear Equation System Solver
# By Dmitry Kudriavtsev

equ_num, var_num = 0

init_screen

def curses_abort(s)
	addstr s + ?\n
	getch
	abort s
end

begin
	crmode
	addstr "Number of equations: "
	equ_num = getstr.to_i
	addstr "Number of variables: "
	var_num = getstr.to_i

	curses_abort "Underdetermined systems are not supported." if equ_num < var_num

	curses_abort "Overdetermined systems are not supported." if equ_num > var_num

	curses_abort "Too many variables." if var_num > 7

	var_names = ['x', 'y', 'z', 't', 'u', 'v', 'w']

	addstr "_x + _y + _z = _"

	setpos 2, 0

	getch
ensure
	close_screen
end
