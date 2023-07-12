class User < ApplicationRecord
    has_many :pictures, as: :image
end
