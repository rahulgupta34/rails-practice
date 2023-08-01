class User < ApplicationRecord
  rolify
    validates :name, :email, presence: true
    has_many :posts, through: :roles, source: :resource, source_type: :Post 

end
