class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable,
         omniauth_providers: [:twitter]

has_many :thanks
has_many :gochisous
attachment :image

def self.from_omniauth(auth)
  find_or_create_by(provider: auth["provider"], uid: auth["uid"]) do |user|
    user.provider = auth["provider"]
    user.uid = auth["uid"]
    user.name = auth["info"]["name"]
  end
end

def self.new_with_session(params, session)
  if session["devise.user_attributes"]
    new(session["devise.user_attributes"]) do |user|
      user.attributes = params
    end
  else
    super
  end
end
end
