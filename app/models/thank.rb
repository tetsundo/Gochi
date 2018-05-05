class Thank < ApplicationRecord
 	belongs_to :staff
  belongs_to :store
  belongs_to :gochi, class_name: Gochisou
  belongs_to :user

  validates :opinion, length: { maximum: 20}
  def gochisoued_by?(user)
      gochisous.where(user_id: user.id).exists?
      gochisous.where(store_id: store.id).exists?
  end
end
