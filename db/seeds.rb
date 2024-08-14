# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb
puts "Cleaning database..."
Restaurant.destroy_all
Review.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "123456789", category: "italian"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "123456789", category: "chinese"}
pizza_north =  {name: "Pizza north", address: "44 North St, Birmington", phone_number: "123456789", category: "italian"}
pizza_south =  {name: "Pizza south", address: "2 South St, New Hamshire", phone_number: "123456789", category: "belgian"}
pizza_west =  {name: "Pizza west", address: "2 West St, Brighton", phone_number: "123456789", category: "french"}
[dishoom, pizza_east, pizza_north, pizza_south, pizza_west].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
