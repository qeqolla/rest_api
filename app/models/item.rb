class Item < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy

  belongs_to :city

  scope :get_all_items_in_city, ->(city) { where(city: city) }
  validate :name, presence: true
end
