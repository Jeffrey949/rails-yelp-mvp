# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all
puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', category: 'french' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', category: 'french' }
burger_king = { name: 'Burger_king', address: 'Hohenzollernring 18', category: 'french' }
pasta_bella = { name: 'pasta_bella', address: 'rome', category: 'italian' }
lakis = { name: 'lakis', address: 'düsseldorf', category: 'italian' }

[dishoom, pizza_east, burger_king, pasta_bella, lakis].each do |rest|
  restaurant = Restaurant.create!(rest)
  puts "Created #{restaurant.name}"
end
