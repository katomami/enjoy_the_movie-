FactoryBot.define do
  password = Faker::Internet.password(min_length: 6, max_length: 8)

  factory :user do
    email { Faker::Internet.email } #=> "eliza@mann.net"
    password { password }
    password_confirmation { password }
    nickname { Faker::Lorem.characters(number: 5) } #=> 5文字生成
  end
end