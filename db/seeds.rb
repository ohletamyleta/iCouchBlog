require 'faker'
require 'database_cleaner'


DatabaseCleaner.clean_with(:truncation)


(1..10).each do |id|
  User.create!(
    id: id,
    name: Faker::Name.unique.name,
    email: Faker::Internet.unique.email,
    password: "password"
    )
end

(1..10)
.each do |id|
  Post.create!(
    id: id,
    title: Faker::Book.title,
    body: Faker::Lorem.paragraph,
    publish_date: Faker::Date.between(from: '2018-01-01', to: '2021-09-27'),
    status: Faker::Number.between(from: 0, to: 1),
    user_id: rand(1..10)
  )
end
