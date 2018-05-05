class Gochisou < ApplicationRecord
  belongs_to :staff
  belongs_to :store
  has_many :thank
  belongs_to :user

  validates :intro, length: {maximum: 20}
end
