class Post < ApplicationRecord
    has_many :pictures, as: :image 
end
