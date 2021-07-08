require 'support/factory_bot'
FactoryBot.define do
  factory :booking do
    start_rent { 1.day.ago }
    end_rent { 5.days.from_now }
  end
end
