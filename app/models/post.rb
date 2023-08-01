class Post < ApplicationRecord
    has_one_attached :avatar
    resourcify
    validates :title, presence: true
    has_many :users, through: :roles, source: :User, class_name: "User", source: :users


end
