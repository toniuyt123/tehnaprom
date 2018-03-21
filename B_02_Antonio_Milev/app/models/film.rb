class Film < ApplicationRecord
	has_many :cinamas_films
	has_many :cinemas, :through => :cinamas_films
	validates :name, uniqueness: true
end
