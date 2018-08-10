# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Cocktail.destroy_all
puts 'Creating coktails...'
cocktails_attributes = [
  {
    name: 'Margarita'
  },
  {
    name: 'Zombie'
  }
]
Cocktail.create!(cocktails_attributes)
puts 'Finished!'

puts 'Creating ingredient...'
ingredients_attributes = [
  {
    name: 'tequila'
  },
  {
    name: 'Rhum'
  }
]
puts 'Finished!'
