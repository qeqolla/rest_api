require 'support/factory_bot'
FactoryBot.define do
  factory :user do
    name { 'usr1' }
    sequence(:email) do |n|
      "user#{n}@test.com"
    end
    city
    last_name {'lst_name'}
  end
end