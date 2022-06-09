FactoryBot.define do
  factory :user do
    email { Faker::Lorem.characters(number:10) }
    password { Faker::Lorem.characters(number:8) }
    nickname { Faker::Lorem.characters(number:5) }
  end
end