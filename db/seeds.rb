# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all

tgik = Restaurant.create!(name: "TGI Kevin's", capacity: 220, has_bar: false)
wicks = Restaurant.create!(name: "Wicks Saloon", capacity: 95, has_bar: true)
miller = Restaurant.create!(name: "Miller Brew Pub", capacity: 48, has_bar: true)
