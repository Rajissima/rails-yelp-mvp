# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# db/seeds.rb

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", category: "french", address: "Paris", phone_number: "098976533" }
pizza_east =  { name: "Pizza East", category: "italian", address: "Rome", phone_number: "098976533" }
mam_goz =  { name: "Mam Goz", category: "french", address: "Renne", phone_number: "098976533" }
sauvages =  { name: "Sauvages", category: "belgian", address: "Bruxelle", phone_number: "098976533" }
toto =  { name: "Toto", category: "belgian", address: "Bruge", phone_number: "098976533" }

[ dishoom, pizza_east, mam_goz, mam_goz, toto ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
