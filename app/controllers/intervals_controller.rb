class IntervalsController < ApplicationController
	Col = 0;
	def calc
		arr = CSVread(params["file"])
		lenght = arr.readlines.size
		render html: lenght
	end
end
