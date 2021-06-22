class User < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy

  belongs_to :city

  validate :name, presence: true
  validate :last_name, presence: true
  validate :email, presence: true

end
