#!/usr/bin/env ruby

# 2x2 Matrix Determinant Calculator (Shoes GUI version)
# by Dmitry Kudriavtsev

def calc_det(a, b, c, d)
	return a * d - b * c
end

Shoes.app title: "Determinant", width: 160, height: 170 do
	stack margin: 10 do
		flow do
			@a = edit_line width: 30
			@b = edit_line width: 30
		end
		flow do
			@c = edit_line width: 30
			@d = edit_line width: 30
		end
		@det = strong("0")
		@result = para "Determinant: ", @det

		b = button "Calculate"
		b.click do |btn, x, y|
			a = @a.text.to_f
			b = @b.text.to_f
			c = @c.text.to_f
			d = @d.text.to_f
			@det.text = calc_det(a, b, c, d)
		end
	end
end
