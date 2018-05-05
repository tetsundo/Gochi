class Thank < ApplicationRecord
 	belongs_to :staff
  belongs_to :store
  belongs_to :gochisou
  belongs_to :user

  validates :opinion, length: { maximum: 20}
end
