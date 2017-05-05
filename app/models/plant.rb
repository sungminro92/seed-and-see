class Plant < ApplicationRecord
	has_many :garden_plants
	has_many :vitamins
end
