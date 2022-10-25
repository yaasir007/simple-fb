# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Post.destroy_all

Post.create(name: "Yaasir", address: "Vallee Pitot", description: "testing", price_per_night: 400, number_of_guests: 5)
Post.create(name: "Caasir", address: "Vallee Pitot", description: "testing", price_per_night: 400, number_of_guests: 5)
