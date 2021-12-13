FactoryBot.define do
  factory :project do
    name { Faker::Name.name }
    description { Faker::Lorem.paragraph }

    # association :user
    user

    trait :with_3_tasks do
      after(:create) { |proj| create_list(:task, 3, project: proj) }
    end

  end
end
