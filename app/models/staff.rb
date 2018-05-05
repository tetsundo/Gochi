class Staff < ApplicationRecord
	attachment :image
	belongs_to :store
	has_many :gochisous
	has_many :thanks
end
