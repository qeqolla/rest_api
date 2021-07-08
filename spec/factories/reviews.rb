require 'support/factory_bot'

FactoryBot.define do
  factory :review do
    feedback { 'qqq' }
    time {Time.current}
  end
end
