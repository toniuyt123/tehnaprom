class CinamasFilm < ApplicationRecord
	belongs_to :film
	belongs_to :cinema
end
