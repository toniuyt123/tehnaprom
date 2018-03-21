class CinamasFilm < ApplicationRecord
	belongs_to :film
	belongs_to :cinema


	validates :film_id, uniqueness: { scope: :cinema_id }
	#oops! these validates weren't necassary
	#validates :film_id, inclusion: {in: Film.all.map{|f| f.id}, message: "Film does not exist"}
	#validates :cinema_id, inclusion: {in: Cinema.all.map{|c| c.id}, message: "Cinema does not exist"}
end
