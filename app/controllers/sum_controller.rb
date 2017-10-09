class SumController < ApplicationController
	def form
	end
	Col = 0
	def calc
		arr = CSVread(params["file"])
		#sum = 0;
		#arr.each do |n|
		#	sum += n[Col];
		#end
		#render plain: "%.2f" % (sum).ceil
		render plain: "%.2f" % (arr.inject(0) {|sum, n| sum + n[ColX] }).ceil;
	end
end

