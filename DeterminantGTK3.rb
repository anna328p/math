require 'gtk3'

builder_file = 'DeterminantLayout.glade'

builder = Gtk::Builder.new file: builder_file

window = builder.get_object "Window1"
window.signal_connect("destroy") { Gtk.main_quit }

label = builder.get_object "DisplayOutput"

input_a = builder.get_object "InputA"
input_b = builder.get_object "InputB"
input_c = builder.get_object "InputC"
input_d = builder.get_object "InputD"

button = builder.get_object "BtnCalculate"
button.signal_connect("clicked") { 
	a = input_a.text.to_f
	b = input_b.text.to_f
	c = input_c.text.to_f
	d = input_d.text.to_f
	det = a * d - b * c
	label.text = det.to_s
	puts det
}


window.show_all

Gtk.main
