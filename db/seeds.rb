# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "french", phone_number: "+33659826392"}
pizza_east =  { name: "Pizza East", address: "Friedrichstraße 147, 10117 Berlin", category: "italian", phone_number: "+33659826392" }
lucky_star = { name: "Lucky Star", address: "Friedrichstraße 127, 10117 Berlin", category: "chinese", phone_number: "+33659826392" }
liu_chengdu = { name: "Liu Chengdu Weidao", address: "Kronenstraße 72, 10117 Berlin", category: "chinese", phone_number: "+33659826392" }
mmaah = { name: "Mmaah", address: "Simon-Dach-Straße 11, 10245 Berlin", category: "japanese", phone_number: "+33659826392" }

[ dishoom, pizza_east, lucky_star, liu_chengdu, mmaah].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Fini !"