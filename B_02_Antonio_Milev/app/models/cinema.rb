class Cinema < ApplicationRecord
	has_many :cinamas_films
	has_many :films, :through => :cinamas_films
end
