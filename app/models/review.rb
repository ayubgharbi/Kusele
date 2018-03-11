class Review < ApplicationRecord
	belongs_to :user
	belongs_to :commerce
end
