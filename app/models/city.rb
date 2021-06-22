class City < ApplicationRecord
  has_many :users, dependent: :destroy
  has_many :items, dependent: :destroy

  validate :name, presence: true
  validate :country, presence: true
  validate :post_code, presence: true
end
