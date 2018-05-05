class Gochisou < ApplicationRecord
  belongs_to :staff
  belongs_to :store
  has_many :thanks
  belongs_to :user

  validates :opinion, length: { maximum: 20}
end
