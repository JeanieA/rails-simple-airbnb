# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Flat.destroy_all

puts 'DB cleaned'
puts 'Creating Flats...'

10.times do
  flat = Flat.create!(
    name: Faker::Ancient.primordial,
    address: Faker::Address.street_name,
    description: Faker::Restaurant.description,
    price_per_night: Faker::Number.number(digits: 3),
    number_of_guests: Faker::Number.between(from: 1, to: 10)
    )
  flat.save!
end

puts 'Seeds created!'
