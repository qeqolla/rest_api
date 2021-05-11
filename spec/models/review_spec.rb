require 'rails_helper'

RSpec.describe Review, type: :model do
  describe ".get_all_reviews" do
    let!(:usr1) { User.create!(name: "test1", city: city) }
    let!(:usr2) { User.create!(name: "test2", city: city) }

    let!(:city) { City.create(name: "test", country: "testtest") }

    let!(:item) { Item.create(city: city, name: "city1") }

    let!(:rew1) { Review.create!(feedback: "qqq", user: usr1, item: item) }
    let!(:rew2) { Review.create!(feedback: "222", user: usr2, item: item) }

    it 'gets all reviews by user1' do
      expect(described_class.get_all_reviews(usr1)).to contain_exactly(rew1)
    end
  end
end
