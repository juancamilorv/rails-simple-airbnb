# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating flats...'

5.times do
  flat = Flat.create!(name: Faker::Lorem.word,
                      address: Faker::Address.street_address,
                      description: Faker::Lorem.paragraph,
                      price_per_night: rand(20..100),
                      number_of_guests: rand(1..8))
  puts "Restaurant #{flat.name} created!"
end
