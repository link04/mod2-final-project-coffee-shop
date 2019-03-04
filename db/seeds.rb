# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Blog.all.delete_all
User.all.delete_all
CoffeeShop.all.delete_all

5.times do
  CoffeeShop.create(name:Faker::Coffee.blend_name)
end
10.times do
  User.create(full_name: Faker::Name.unique.name, user_name: Faker::Internet.email, password: Faker::Alphanumeric.alphanumeric, coffee_shop_id: CoffeeShop.all.sample.id)
end
20.times do
  Blog.create(title: Faker::Lorem.sentence, content: Faker::Lorem.paragraph, user_id: User.all.sample.id )
end

10.times do
  Comment.create(title: Faker::Lorem.sentence, content: Faker::Lorem.paragraph, user_id: User.all.sample.id )
end

20.times do
  Like.create(title: Faker::Lorem.sentence, content: Faker::Lorem.paragraph, user_id: User.all.sample.id )
end






puts "Seeded."
