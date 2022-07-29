# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(
  email: 'ichigo@gmail.com',
  password: '1357911',
)
Admin.create!(
  email: 'bake@gmail.com',
  password: '123456',
)


Customer.create!(
  last_name: '苺',
  first_name: '市子',
  last_name_kana: 'イチゴ',
  first_name_kana: 'イチコ',
  post_code: '1115555',
  address: '苺本町',
  phone_number: '08011115555',
  is_deleted: false,
  email: 'strw@gmail.com',
  password: '111555',
  )

Genre.create!(
  name: "ケーキ"
)

Genre.create!(
  name: "焼き菓子"
)

Genre.create!(
  name: "プリン"
)

Genre.create!(
  name: "タルト"
)

Genre.create!(
  name: "スイーツパン"
)



Item.create!(
  [
    {
      genre_id: 1,
      name: "whiteケーキ(6号)",
      introduction: "フルーツとクリームたっぷりのケーキ",
      price: 1500,
      sales_status: 'sale',
      image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/wh_cake1.jpg")),filename: 'wh_cake1.jpg')
    },
    {
      genre_id: 3,
      name: "ティラミス",
      introduction: "マスカルポーネクリームが乗った自家製ティラミス",
      price: 350,
      sales_status: 'sale',
      image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/tiramesu1.jpg")),filename: 'tiramesu1.jpg')
    },
    {
      genre_id: 1,
      name: "幸せケーキ-berry-",
      introduction: "お祝い用のベリーのケーキ",
      price: 1200,
      sales_status: 'sale',
      image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/bicake2.jpg")),filename: 'bicake2.jpg')
    },
    {
      genre_id: 1,
      name: "幸せケーキ-maron-",
      introduction: "お祝い用のマロンのケーキ",
      price: 1200,
      sales_status: 'sale',
      image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/bicake1.jpg")),filename: 'bicake1.jpg')
    },
    {
      genre_id: 1,
      name: "幸せケーキ-chocolate-",
      introduction: "お祝い用のチョコのケーキ",
      price: 1300,
      sales_status: 'sale',
      image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/bicake3.jpg")),filename: 'bicake3.jpg')
    },
    {
      genre_id: 2,
      name: "シュークリーム(3個入)",
      introduction: "自家製カスタードを入れたシュークリーム",
      price: 1050,
      sales_status: 'sale',
      image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/shuu1.jpg")),filename: 'shuu1.jpg')
    },
    {
      genre_id: 1,
      name: "フラワーケーキ-Mother's day-",
      introduction: "母の日限定のケーキ",
      price: 1800,
      sales_status: 'stop_selling',
      image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/Ccake1.jpg")),filename: 'Ccake1.jpg')
    },
    {
      genre_id: 4,
      name: "フルーツタルト",
      introduction: "ベリーをふんだんに乗せたタルト",
      price: 1400,
      sales_status: 'sale',
      image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/frtart1.jpg")),filename: 'frtart1.jpg')
    },
    {
      genre_id: 4,
      name: "カスタードタルト",
      introduction: "クリームたっぷりのタルト",
      price: 1300,
      sales_status: 'sale',
      image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/tart3.jpg")),filename: 'tart3.jpg')
    },
    {
      genre_id: 5,
      name: "マリトッツォ風のパン(2種)",
      introduction: "見た目も可愛い菓子パン",
      price: 1050,
      sales_status: 'sale',
      image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/pan1.jpg")),filename: 'pan1.jpg')
    },
    {
      genre_id: 1,
      name: "アフタヌーンティーのケーキセット",
      introduction: "ランチにオススメ！",
      price: 1200,
      sales_status: 'sale',
      image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/cakeset1.jpg")),filename: 'cakeset1.jpg')
    },
    {
      genre_id: 2,
      name: "マロンタルトとサブレのセット",
      introduction: "パーティー用のセットメニュー",
      price: 2000,
      sales_status: 'sale',
      image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/tartset1.jpg")),filename: 'tartset1.jpg')
    },
    {
      genre_id: 2,
      name: "ミスター・シュークリーム",
      introduction: "キリッとした紳士さん、甘く柔らかい",
      price: 400,
      sales_status: 'sale',
      image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/shuu2.jpg")),filename: 'shuu2.jpg')
    },
    {
      genre_id: 1,
      name: "桃とレッドカラントのケーキ(6号)",
      introduction: "酸味と甘みが調和された、夏限定のケーキ",
      price: 1800,
      sales_status: 'sale',
      image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/choco_cake.png")),filename: 'choco_cake.png')
    },
    {
      genre_id: 2,
      name: "苺ムースのタルト",
      introduction: "とろける苺ムースがのったタルト",
      price: 1000,
      sales_status: 'sale',
      image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/mousse1.jpg")),filename: 'mousee1.jpg')
    }
  ]
)