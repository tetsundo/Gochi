class Store < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,:validatable

   attachment :image
  has_many :staffs, dependent: :destroy
  has_many :thanks
  has_many :gochisous
end
