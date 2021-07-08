class User < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy

  belongs_to :city

  validates :name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true

end
