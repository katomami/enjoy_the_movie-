# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
# movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# Character.create(name: 'Luke', movie: movies.first)

Admin.create!(
  email: ENV['SEED_MAIL'],
  password: ENV['SEED_PASSWORD'],
)
User.create!(
  nickname: ENV['TEST_NICKNAME'],
  email: ENV['TEST_MAIL'],
  password: ENV['TEST_PASSWORD'],
)

Picture.create!(
  title: '時計じかけのオレンジ',
  jan: '4988135805768',
  image_url: 'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/5768/4988135805768.jpg',
  caption: '',
)
Picture.create!(
  title: 'カメラを止めるな！',
  jan: '498802114756',
  image_url: 'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/7569/4988021147569.jpg',
  caption: '',
)


Genre.create!(
  name: 'SF',
)
Genre.create!(
  name: 'コメディ',
)

Movie.create!(
  picture_id: '1',
  genre_id: '1',
  title: '時計じかけのオレンジ',
  production_year: 'ccc',
  director_name: 'ccc',
  explanation: 'ccc',
)
Movie.create!(
  picture_id: '2',
  genre_id: '2',
  title: 'カメラを止めるな！',
  production_year: 'aaa',
  director_name: 'aaa',
  explanation: 'aaa',
)
