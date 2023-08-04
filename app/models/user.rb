class User < ApplicationRecord
  rolify
    extend FriendlyId
    friendly_id :name, use: :slugged
    validates :name, :email, presence: true
    has_many :posts, through: :roles, source: :resource, source_type: :Post 

end
