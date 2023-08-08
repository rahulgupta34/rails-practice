class User < ApplicationRecord
  validates :email, :name, uniqueness: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:google_oauth2, :facebook, :github]

  def self.from_omniauth(access_token)
        data = access_token.info
        user = User.where(email: data['email']).first
      
          # Uncomment the section below if you want users to be created if they don't exist
          unless user
              user = User.create(email: data['email'],
                 email: data['email'],
                 password: Devise.friendly_token[0,20],
                 uid: access_token.uid,
                 provider: access_token.provider
              )
          end
        user
  end

  def self.from_omniauth_github(access_token)
    user = User.where(name: access_token.info["nickname"].strip).first

    unless user
      user = User.create(name: access_token.info["nickname"].strip,
         email: "rahul.g@simformsolutions.com",
         password: Devise.friendly_token[0,20],
         uid: access_token.uid,
         provider: access_token.provider
      )
    end
    user
  end

end
