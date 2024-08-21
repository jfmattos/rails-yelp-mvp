# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
mrchang = {name: "MR. Chang", address: "china street", phone_number: "12398722", category: "chinese"}

pizzaplanet = {name: "Pizza Planet", address: "rome street", phone_number: "1222222", category: "italian"}

jappa = {name: "Jappa", address: "tokyo street", phone_number: "3333333", category: "japanese"}

ouioui = {name: "Oui Oui", address: "paris street", phone_number: "4444444", category: "french"}

houseoffries = {name: "House of Fries", address: "antwerp street", phone_number: "5555555", category: "belgian"}

[mrchang, pizzaplanet, jappa, ouioui, houseoffries].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
