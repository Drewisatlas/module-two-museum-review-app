require 'faker'
include Faker

5.times do
  User.create(
    username: Faker::Internet.email,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    age: Faker::Number.number(2),
    email: Faker::Internet.email
  )
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# user1 = User.create(username: "Artsy_Bartsy", first_name: "Bart", last_name: "Simpson", age: "20", email: "eatmyshorts@gmail.com")
#
# user2 = User.create(username: "lisaLovesJazz",first_name: "Lisa", last_name: "Simpson", age: "18", email: "saxophonegirl1@yahoo.com")
#
# user3 = User.create(username: "banksy", first_name: "John", last_name: "Doe", age:"43", email: "ratfan@aol.com")
