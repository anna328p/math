require 'gtk3'

def to_rad(d)
	return d * Math::PI / 180
end

builder_file = 'VectorForceLayout.glade'

builder = Gtk::Builder.new file: builder_file

window = builder.get_object "Window1"
window.signal_connect("destroy") { Gtk.main_quit }

input_force = builder.get_object "InputForce"
input_angle = builder.get_object "InputAngle"

output_a = builder.get_object "OutputA"
output_b = builder.get_object "OutputB"

button = builder.get_object "BtnCalculate"
button.signal_connect("clicked") { 
	f = input_force.text.to_f
	a = input_angle.text.to_f

	i = f * Math::cos(to_rad(a))
	j = f * Math::sin(to_rad(a))

	output_a.text = i.round(2).to_s
	output_b.text = j.round(2).to_s

	puts "F = #{i}i + #{j}j"
}


window.show_all

Gtk.main
