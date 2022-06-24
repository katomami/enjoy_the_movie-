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
  nickname: 'テスト',
  email: 'test@test',
  password: '123456',
)

Picture.create!(
  title: '時計じかけのオレンジ',
  jan: '4988135805768',
  image_url: 'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/5768/4988135805768.jpg',
  caption: '人々は生活を賭けた労働から解放され、衣食住の心配をすることがなくなった世の中。15歳のアレックス少年は、機械的に規則正しく過ぎてゆく毎日に退屈していた。ティーン・エイジャーの理由なき反抗を描く。',
)
Picture.create!(
  title: 'カメラを止めるな！',
  jan: '498802114756',
  image_url: 'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/7569/4988021147569.jpg',
  caption: 'とある郊外の廃墟で、ゾンビものの自主映画の撮影が行われていた。その建物には、かつて日本軍が死体を蘇らせる実験をしていたという、忌まわしい都市伝説があった。',
)
Picture.create!(
  title: 'マトリックス',
  jan: '498813580508',
  image_url: 'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/5089/4988135805089.jpg',
  caption: 'ニューヨークの会社でしがないコンピュータプログラマーとして働くトマス・アンダーソンには、裏世界の凄腕ハッカー“ネオ”というもうひとつの顔があった。',
)
Picture.create!(
  title: 'プロメア',
  jan: '4534530121493',
  image_url: 'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/1493/4534530121493_20.jpg',
  caption: '「燃えていいのは魂だけだ。はた迷惑な炎は消してやるよ、燃えて消すのが俺の流儀だ！」監督：今石洋之×脚本：中島かずき×アニメーション制作：TRIGGERによる初の完全新作オリジナルアニメーション',
)
Picture.create!(
  title: 'OCEANS',
  jan: '4589921411974',
  image_url: 'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/1974/4589921411974.jpg',
  caption: 'そこは、想像さえも呑み込まれる未知の世界。 製作費70億円。『アース』『ディープ・ブルー』を超える、史上最大のドキュメンタリー・プロジェクト‼ ',
)
Picture.create!(
  title: 'シェイプ・オブ・ウォーター',
  jan: '4988142420312',
  image_url: 'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/0312/4988142420312.jpg',
  caption: '声を失くした孤独な女性と、遠い海から連れて来られた不思議な生きものーファンタジー・ロマンスが、魅惑的な映像美と監督の比類なき世界観で甦る。',
)
Picture.create!(
  title: '幸せのちから',
  jan: '4547462074171',
  image_url: 'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/4171/4547462074171.jpg',
  caption: '事業の失敗によりホームレスになるまで落ちぶれたが、最終的には成功を掴んだ実在の男性、クリス・ガードナーの半生を描いた作品。',
)
Picture.create!(
  title: 'シャイニング',
  jan: '4988135804792',
  image_url: 'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/4792/4988135804792.jpg',
  caption: '作家のジャック・トランスは、妻ウェンディと息子ダニーを連れ、冬の間閉鎖されるホテルに管理人として滞在することになる。 しかし猛吹雪で唯一の道が塞がれ、外界と隔離されてしまう。',
)
Picture.create!(
  title: 'ゴーン・ガール',
  jan: '4988142284716',
  image_url: 'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/4716/4988142284716.jpg',
  caption: '予測不可能なラスト！鬼才デイビッド・フィンチャーが描くサイコロジカル・サスペンス！ 失踪した妻と疑われた夫 メディアが暴く夫婦の秘密とは…… ',
)
Picture.create!(
  title: 'ロスト・バケーション',
  jan: '4547462112064',
  image_url: 'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/2064/4547462112064.jpg',
  caption: '全世界を興奮と恐怖に巻き込んだシャークムービーの新たな傑作！ 限られたスペースしかない岩場にたった一人取り残された女性サーファー。 海に潜む獰猛な存在が岩場の周囲で彼女を狙う。',
)
Picture.create!(
  title: 'セブン',
  jan: '4988135832290',
  image_url: 'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/2290/4988135832290.jpg',
  caption: 'キリスト教の「七つの大罪」をモチーフにした連続猟奇殺人事件と、その事件を追う刑事たちの姿を描いたサイコ・サスペンス。',
)
Picture.create!(
  title: 'ラ・ラ・ランド',
  jan: '4988013937765',
  image_url: 'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/7765/4988013937765.jpg',
  caption: '第89回アカデミー賞、最多6部門受賞！！観るもの全てが恋に落ちる、極上のミュージカル・エンターテインメント！',
)

Genre.create!(
  name: 'SF',
)
Genre.create!(
  name: 'コメディ',
)
Genre.create!(
  name: 'アクション',
)
Genre.create!(
  name: 'アニメ',
)
Genre.create!(
  name: 'ドキュメンタリー',
)
Genre.create!(
  name: 'ファンタジー',
)
Genre.create!(
  name: '伝記',
)
Genre.create!(
  name: 'ホラー',
)
Genre.create!(
  name: 'ミステリー',
)
Genre.create!(
  name: 'アドベンチャー',
)
Genre.create!(
  name: 'サスペンス',
)
Genre.create!(
  name: 'ミュージカル',
)

Movie.create!(
  picture_id: '1',
  genre_id: '1',
  title: '時計じかけのオレンジ',
  production_year: '1971年',
  director_name: 'スタンリー・キューブリック',
  explanation: '人々は生活を賭けた労働から解放され、衣食住の心配をすることがなくなった世の中。15歳のアレックス少年は、機械的に規則正しく過ぎてゆく毎日に退屈していた。ティーン・エイジャーの理由なき反抗を描く。',
)
Movie.create!(
  picture_id: '2',
  genre_id: '2',
  title: 'カメラを止めるな！',
  production_year: '2017年',
  director_name: '上田慎一郎',
  explanation: 'とある郊外の廃墟で、ゾンビものの自主映画の撮影が行われていた。その建物には、かつて日本軍が死体を蘇らせる実験をしていたという、忌まわしい都市伝説があった。',
)
Movie.create!(
  picture_id: '3',
  genre_id: '3',
  title: 'マトリックス',
  production_year: '1999年',
  director_name: 'ラナ・ウォシャウスキー、リリー・ウォシャウスキー',
  explanation: 'ニューヨークの会社でしがないコンピュータプログラマーとして働くトマス・アンダーソンには、裏世界の凄腕ハッカー“ネオ”というもうひとつの顔があった。',
)
Movie.create!(
  picture_id: '4',
  genre_id: '4',
  title: 'プロメア',
  production_year: '2019年',
  director_name: '今石洋之',
  explanation: '「燃えていいのは魂だけだ。はた迷惑な炎は消してやるよ、燃えて消すのが俺の流儀だ！」監督：今石洋之×脚本：中島かずき×アニメーション制作：TRIGGERによる初の完全新作オリジナルアニメーション',
)
Movie.create!(
  picture_id: '5',
  genre_id: '5',
  title: 'OCEANS',
  production_year: '2009年',
  director_name: 'ジャック･ペラン',
  explanation: 'そこは、想像さえも呑み込まれる未知の世界。 製作費70億円。『アース』『ディープ・ブルー』を超える、史上最大のドキュメンタリー・プロジェクト‼ ',
)
Movie.create!(
  picture_id: '6',
  genre_id: '6',
  title: 'シェイプ・オブ・ウォーター',
  production_year: '2017年',
  director_name: 'ギレルモ・デル・トロ',
  explanation: '声を失くした孤独な女性と、遠い海から連れて来られた不思議な生きものーファンタジー・ロマンスが、魅惑的な映像美と監督の比類なき世界観で甦る。',
)
Movie.create!(
  picture_id: '7',
  genre_id: '7',
  title: '幸せの力',
  production_year: '2006年',
  director_name: 'ガブリエレ・ムッチーノ',
  explanation: '事業の失敗によりホームレスになるまで落ちぶれたが、最終的には成功を掴んだ実在の男性、クリス・ガードナーの半生を描いた作品。',
)
Movie.create!(
  picture_id: '8',
  genre_id: '8',
  title: 'シャイニング',
  production_year: '1980年',
  director_name: 'スタンリー・キューブリック',
  explanation: '作家のジャック・トランスは、妻ウェンディと息子ダニーを連れ、冬の間閉鎖されるホテルに管理人として滞在することになる。 しかし猛吹雪で唯一の道が塞がれ、外界と隔離されてしまう。',
)
Movie.create!(
  picture_id: '9',
  genre_id: '9',
  title: 'ゴーン・ガール',
  production_year: '2014年',
  director_name: 'デイビッド・フィンチャー',
  explanation: '予測不可能なラスト！鬼才デイビッド・フィンチャーが描くサイコロジカル・サスペンス！ 失踪した妻と疑われた夫 メディアが暴く夫婦の秘密とは…… ',
)
Movie.create!(
  picture_id: '10',
  genre_id: '10',
  title: 'ロスト・バケーション',
  production_year: '2016年',
  director_name: 'ジャウム・コレット＝セラ',
  explanation: '全世界を興奮と恐怖に巻き込んだシャークムービーの新たな傑作！ 限られたスペースしかない岩場にたった一人取り残された女性サーファー。 海に潜む獰猛な存在が岩場の周囲で彼女を狙う。',
)
Movie.create!(
  picture_id: '11',
  genre_id: '11',
  title: 'セブン',
  production_year: '1995年',
  director_name: 'デヴィッド・フィンチャー',
  explanation: 'キリスト教の「七つの大罪」をモチーフにした連続猟奇殺人事件と、その事件を追う刑事たちの姿を描いたサイコ・サスペンス。',
)
Movie.create!(
  picture_id: '12',
  genre_id: '12',
  title: 'ラ・ラ・ランド',
  production_year: '2016年',
  director_name: 'デイミアン・チャゼル',
  explanation: '第89回アカデミー賞、最多6部門受賞！！観るもの全てが恋に落ちる、極上のミュージカル・エンターテインメント！',
)