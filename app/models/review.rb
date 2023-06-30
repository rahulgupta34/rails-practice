class Review < ApplicationRecord
  belongs_to :book
  belongs_to :customer
  
  enum :state, [:not_reviewed, :published, :hidden]

end
