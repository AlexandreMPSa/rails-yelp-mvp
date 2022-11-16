# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
puts 'Cleaning database'
Restaurant.destroy_all
# TODO: Write a seed to insert 100 posts in the database
categories = %w(chinese italian japanese french belgian)
5.times do
  Restaurant.create(
    name: Faker::Music.band,
    address: Faker::Address.city,
    category: categories.sample,
    phone_number: Faker::PhoneNumber.phone_number
  )
end
puts 'Finished'
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
