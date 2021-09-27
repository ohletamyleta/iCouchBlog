require 'faker'

(1..10).each do |id|
  User.create!(
    id: id,
    name: Faker::Name.unique.name,
    email: Faker::Internet.unique.email,
    password: "password"
    
  )
end


