FactoryBot.define do
  factory :movie do
    title { Faker::Lorem.characters(number:30) }
    director_name { Faker::Lorem.characters(number:30) }
    production_year { Faker::Lorem.characters(number:10) }
    explanation { Faker::Lorem.characters(number:105) }
    association :genre
  end
end