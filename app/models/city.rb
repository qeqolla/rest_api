class City < ApplicationRecord
  has_many :users, dependent: :destroy
  has_many :items, dependent: :destroy
end
