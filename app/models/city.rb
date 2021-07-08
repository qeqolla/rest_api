class City < ApplicationRecord
  has_many :users, dependent: :destroy
  has_many :items, dependent: :destroy

  validates :name, presence: true
  validates :country, presence: true
  validates :post_code, presence: true
end
