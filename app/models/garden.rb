class Garden < ApplicationRecord
	validates :user_id, :uniqueness => true
	belongs_to :user
	has_many :garden_plants
end
