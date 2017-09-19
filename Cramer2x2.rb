require 'gtk3'

builder_file = 'Cramer2x2Layout.glade'

builder = Gtk::Builder.new file: builder_file

window = builder.get_object "CramerWindow"
window.signal_connect("destroy") { Gtk.main_quit }

label = builder.get_object "XOutput"

input_a = builder.get_object "InputA"
input_b = builder.get_object "InputB"
input_c = builder.get_object "InputC"
input_d = builder.get_object "InputD"
input_e = builder.get_object "InputE"
input_f = builder.get_object "InputF"

button = builder.get_object "CalculateButton"
button.signal_connect("clicked") { 
	a = input_a.text.to_r
	b = input_b.text.to_r
	c = input_c.text.to_r
	d = input_d.text.to_r
	det = a * d - b * c
	det = det.to_i if (det % 1).to_f == 0.0
	label.text = det.to_s
	puts det
}


window.show_all

Gtk.main
