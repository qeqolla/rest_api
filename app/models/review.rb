class Review < ApplicationRecord
  belongs_to :user
  belongs_to :item

  scope :get_all_reviews, ->(user) { where(user: user) }
end
