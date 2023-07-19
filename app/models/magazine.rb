class Magazine < ApplicationRecord
  validates :name, presence: true
  has_many :ads
end
