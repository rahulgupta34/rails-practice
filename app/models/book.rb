class Book < ApplicationRecord
  belongs_to :author
  belongs_to :supplier
  has_many :reviews
end
