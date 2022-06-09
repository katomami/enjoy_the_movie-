FactoryBot.define do
  factory :review do
    comment { Faker::Lorem.characters(number:105) }
    spoiler { Faker::Lorem.characters(number:105) }
    purpose { Faker::Lorem.characters(number:15) }
    comment_title { Faker::Lorem.characters(number:15) }
    star { Faker::Lorem.characters(number:1) }
    association :movie
    association :user
  end
end