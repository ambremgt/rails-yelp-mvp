# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "06 21 38 72 79", category: "french" }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "06 21 38 72 70", category: "italian" }
mcdo =  { name: "McDo", address: "Rue Oberkampf", phone_number: "06 21 38 62 80", category: "french" }
gladine = { name: "Gladine", address: "Rue Brochant", phone_number: "06 21 3 72 11", category: "french" }
pignon =  { name: "Pignon", address: "Rue Réaumur", phone_number: "06 12 38 72 01", category: "japanese" }

[dishoom, pizza_east, mcdo, gladine, pignon].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
