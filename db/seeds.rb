# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(name:  "Ngoc Vu",
  email: "user@gmail.com",
  password: "123456",
  password_confirmation: "123456",
  remember_digest: "123456",
  role: 1 )

User.create!(name:  "User 1",
  email: "admin@gmail.com",
  password: "123456",
  password_confirmation: "123456",
  remember_digest: "123456",
  role: 0)
30.times do |n|
  Category.create!(
    name: "Category-#{n+1}",
    content: Faker::Lorem.paragraphs.first)
end

30.times do |n|
  Product.create!(
    name: "Product-#{n+1}",
    content: Faker::Lorem.paragraphs.first,
    price: 10,
    category_id: 1)
end