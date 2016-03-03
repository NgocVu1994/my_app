# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(name:  "Ngoc Vu",
  email: "ngocvu.uet@gmail.com",
  password: "123456",
  password_confirmation: "123456",
  remember_digest: "123456",
  role: 1 )