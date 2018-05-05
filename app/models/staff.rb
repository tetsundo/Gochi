class Staff < ApplicationRecord
	attachment :image
	belongs_to :store
end
