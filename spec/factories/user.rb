FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "example#{n}@example.com" }
    password {"123456"}

    trait :confirmed do
      # transient do
      #   insured_amount { 1000 }
      #   insured_item_status { :active }
      #   insured_items_count { 1 }
      # end

      after(:create) do |user|
        user.confirm!
      end
    end
  end
end
