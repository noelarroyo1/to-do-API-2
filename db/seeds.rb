require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Create your user to access API easily
User.create!(
  name: 'Noel',
  username: 'FRKN_RICAN',
  email: 'noel@sextonscreek.com',
  password: 'P@ssword2016##'
)


#Create a couple of fake users
2.times do
  User.create!(
    name: Faker::Name.unique.name,
    username: Faker::Name.unique.name,
    email: Faker::Internet.unique.email,
    password: Faker::Lorem.characters(10)
  )
end
users = User.all

#Create a couple fake lists
2.times do
  List.create!(
    user: users.sample,
    title: Faker::Lorem.sentence
  )
end
lists = List.all

5.times do
  Item.create!(
    list: lists.sample,
    description: Faker::Lorem.sentence
  )
end

puts "Seeding finished"
puts "#{User.count} users created"
puts "#{List.count} lists created"
puts "#{Item.count} items created"
