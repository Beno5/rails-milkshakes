# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'json'

puts 'clearing db...'
Milkshake.destroy_all
Ingredient.destroy_all

puts 'adding ingredients...'
ingredients = Ingredient.create([{ name: "Milk"}, { name: "Protein"}, { name: "Nuts"}])

puts 'adding milkshakes...'
michael = User.create!(email: "michael@example.com", password: "123456")
milkshake1 = Milkshake.new(name: 'bananna-milkshake', description: "It's great milkshake. You need to try it!", user: michael)
milkshake1.photo.attach(io: URI.open("https://res.cloudinary.com/beno5/image/upload/v1607847110/l51viv3jx7zzi0y91m8rl1dkn4xx.jpg"), filename: "milkshake.jpg", content_type: 'image/png')
milkshake1.save!
# milkshake2 = Milkshake.create!(name: 'chockolate-milkshake', price: 2, description: "It's great milkshake. You need to try it!")
# milkshake3 = Milkshake.create!(name: 'protein-milkshake', price: 2, description: "It's great milkshake. You need to try it!")
# milkshake4 = Milkshake.create!(name: 'kiwi-milkshake', price: 2, description: "It's great milkshake. You need to try it!")
# milkshake5 = Milkshake.create!(name: 'apple-milkshake', price: 2, description: "It's great milkshake. You need to try it!")
# milkshake6 = Milkshake.create!(name: 'bomb-milkshake', price: 2, description: "It's great milkshake. You need to try it!")
# milkshake7 = Milkshake.create!(name: 'vanilla-milkshake', price: 2, description: "It's great milkshake. You need to try it!")

puts 'done'
