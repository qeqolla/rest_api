require 'rails_helper'

RSpec.describe Item, type: :model do
  describe ".get_all_items_in_city" do

    let!(:city) { City.create(name: "test", country: "testtest") }
    let!(:item) { Item.create(city: city, name: "city1") }
    let!(:item1) { Item.create(city: City.create(name: "1111", country: "1111t1"), name: "city2") }
    let!(:i1) { Item.create}

    it 'should gets all items in city' do
      expect(described_class.get_all_items_in_city(city)).to eq([item])
    end
  end
end
