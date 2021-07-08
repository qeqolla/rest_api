require 'rails_helper'

RSpec.describe Item, type: :model do
  describe ".get_all_items_in_city" do
    let!(:city) { create(:city, name: "test", country: "test_test") }
    let!(:item) { create(:item, city: city, name: "city1") }
    let!(:item1) { create(:item, city: city, name: "city2") }
    it 'should gets all items in city' do
      expect(described_class.get_all_items_in_city(city)).to eq([item, item1])
    end
  end
end



