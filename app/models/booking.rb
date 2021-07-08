class Booking < ApplicationRecord
  belongs_to :item
  belongs_to :user

  validates :start_rent, presence: true
  validates :end_rent, presence: true
end
