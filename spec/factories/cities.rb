require 'support/factory_bot'

FactoryBot.define do
  factory :city do
    name { 'city1' }
    country { 'country1' }
    post_code { '11111' }
  end
end