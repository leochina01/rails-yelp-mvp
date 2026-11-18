# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#
# db/seeds.rb
puts "Cleaning database..."
Review.destroy_all
Restaurant.destroy_all

puts "Creating restaurants..."
Restaurant.create!(name: "Le Petit Wok", address: "12 Rue de la Paix, 75002 Paris",
phone_number: "+33 1 23 45 67 89", category: "chinese")
Restaurant.create!(name: "Trattoria Roma", address: "8 Rue Oberkampf, 75011 Paris",
phone_number: "+33 1 98 76 54 32", category: "italian")
Restaurant.create!(name: "Sakura", address: "25 Rue Sainte-Anne, 75001 Paris",
phone_number: "+33 1 11 22 33 44", category: "japanese")
Restaurant.create!(name: "Chez Marcel", address: "3 Rue du Bac, 75007 Paris",
phone_number: "+33 1 55 66 77 88", category: "french")
Restaurant.create!(name: "Brasserie Bruxelles", address: "40 Rue Montorgueil, 75002 Paris",
phone_number: "+33 1 44 33 22 11", category: "belgian")

puts "Finished! Created #{Restaurant.count} restaurants."
