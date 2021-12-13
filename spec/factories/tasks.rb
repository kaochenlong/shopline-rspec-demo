FactoryBot.define do
  factory :task do
    title { Faker::Internet.email }

    project

    trait :completed do
      completed_at { 1.day.ago }
    end
  end
end
