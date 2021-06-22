class Booking < ApplicationRecord
  belongs_to :item
  belongs_to :user

  validate :start_rent, presence: true
  validate :end_rent, presence: true
end
