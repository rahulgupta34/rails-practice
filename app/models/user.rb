class User < ApplicationRecord
  rolify
    validates :name, :email, presence: true
end
