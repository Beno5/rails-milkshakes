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
ingredients = JSON.parse(open('https://www.themealdb.com/api/json/v1/1/list.php?i=list').read)['meals']
ingredients.each do |ingredient|
  Ingredient.create!(name: ingredient['strIngredient'])
end

puts 'adding milkshakes...'

file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
milkshake1 = Milkshake.create!(name: 'bananna-milkshake', price: 2, description: "It's great milkshake. You need to try it!")
milkshake1.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
milkshake2 = Milkshake.create!(name: 'chockolate-milkshake', price: 2, description: "It's great milkshake. You need to try it!")
milkshake3 = Milkshake.create!(name: 'protein-milkshake', price: 2, description: "It's great milkshake. You need to try it!")
milkshake4 = Milkshake.create!(name: 'kiwi-milkshake', price: 2, description: "It's great milkshake. You need to try it!")
milkshake5 = Milkshake.create!(name: 'apple-milkshake', price: 2, description: "It's great milkshake. You need to try it!")
milkshake6 = Milkshake.create!(name: 'bomb-milkshake', price: 2, description: "It's great milkshake. You need to try it!")
milkshake7 = Milkshake.create!(name: 'vanilla-milkshake', price: 2, description: "It's great milkshake. You need to try it!")

puts 'done'



file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
milkshake1 = Milkshake.new(name: 'bananna-milkshake', price: 2, description: "It's great milkshake. You need to try it!")
milkshake1.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
milkshake1.save!