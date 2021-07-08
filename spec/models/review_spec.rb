require 'rails_helper'
require 'support/factory_bot'

RSpec.describe Review, type: :model do
  describe ".get_all_reviews" do

    let!(:user) { create(:user) }
    let!(:city) { create(:city) }
    let!(:booking) { create(:booking, user: user, item: item) }
    let!(:rew1) { create(:review, feedback: "qqq", user: user, item: item) }
    let!(:item) { Item.create(city: city, name: "city1") }


    it 'gets all reviews by user1' do
      expect(described_class.get_all_reviews(user)).to contain_exactly(rew1)
    end
  end

  describe ".check_if_record_with_user_exists" do
    let!(:valid_user) { create(:user) }
    let!(:invalid_user) { create(:user) }
    let!(:city) { create(:city) }
    let!(:item) { Item.create(city: city, name: "city1") }
    let!(:valid_user_booking) { create(:booking, user: valid_user, item: item) }

    it 'works correct' do
      valid_review = Review.new(feedback: "qqq", user: valid_user, item: item)
      expect(valid_review).to be_valid
      invalid_review = Review.new(feedback: "qqq", user: invalid_user, item: item)
      expect(invalid_review).to be_invalid
      expect(invalid_review.errors.full_messages).to include("User never dealt with")
    end
  end
end
