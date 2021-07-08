class Review < ApplicationRecord
  belongs_to :user
  belongs_to :item

  scope :get_all_reviews, ->(user) { where(user: user) }

  validate :check_if_record_with_user_exists, on: :create
  private

  def check_if_record_with_user_exists
    return if Booking.exists?(user: user, item: item)

    errors.add(:user, "never dealt with")
  end
end
