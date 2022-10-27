# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Post.destroy_all

10.times do
  Post.create(
    name: Faker::Company.industry,
    address: Faker::Address.city,
    description: Faker::Company.catch_phrase,
    price_per_night: Faker::Company.ein,
    number_of_guests: Faker::Company.ein
  )
end
