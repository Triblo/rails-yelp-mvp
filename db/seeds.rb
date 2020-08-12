# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Cleaning database.."
Restaurant.destroy_all

puts "Creating restaurants.."
  restaurant1 = { name: Faker::Restaurant.name, address: Faker::Address.street_name, category: "chinese", phone_number: Faker::PhoneNumber.cell_phone }
  restaurant2 = { name: Faker::Restaurant.name, address: Faker::Address.street_name, category: "italian", phone_number: Faker::PhoneNumber.cell_phone }
  restaurant3 = { name: Faker::Restaurant.name, address: Faker::Address.street_name, category: "japanese", phone_number: Faker::PhoneNumber.cell_phone }
  restaurant4 = { name: Faker::Restaurant.name, address: Faker::Address.street_name, category: "french", phone_number: Faker::PhoneNumber.cell_phone }
  restaurant5 = { name: Faker::Restaurant.name, address: Faker::Address.street_name, category: "belgian", phone_number: Faker::PhoneNumber.cell_phone }

[ restaurant1, restaurant2, restaurant3, restaurant4, restaurant5 ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Creating reviews..."
  

puts "Finished!"
