class FiltersController < ApplicationController
	ColX = 1;
	COlY = 2
	def calc
		sum = 0;
		arr = CSVread(params["file"])
		arr.each do |n|
			if n[ColY] % 2 == 0
				sum += n[ColX]	
			end
		end
		render plain: "%.2f" % (sum).ceil
	end
end
