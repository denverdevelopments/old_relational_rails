# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Restaurant.connection.truncate(Restaurant.table_name)

## Kevin side
Chef.destroy_all
Restaurant.destroy_all


tgik = Restaurant.create!(name: "TGI Kevin's", capacity: 220, has_bar: false)
wicks = Restaurant.create!(name: "Wicks Saloon n' Honkytonk", capacity: 95, has_bar: true)
miller = Restaurant.create!(name: "Miller Brew Pub", capacity: 48, has_bar: true)

tgik.chefs.create!(name: "Kevon Loron", experience: 4, desserts: false)
tgik.chefs.create!(name: "Rordon Gamsey", experience: 3, desserts: true)
tgik.chefs.create!(name: "Chulia Jild", experience: 9, desserts: false)

wicks.chefs.create!(name: "Earp Wyatt", experience: 7, desserts: false)
wicks.chefs.create!(name: "Jessie Holiday", experience: 2, desserts: false)

miller.chefs.create!(name: "Jacque Milair", experience: 6, desserts: true)

## Wyatt side

Supplier.destroy_all
SupplyTruck.destroy_all

kevin = Supplier.create!(name: "Kevin's Carrots", number_of_employees: 5, open_weekends: true)
wes = Supplier.create!(name: "The Hog Farm", number_of_employees: 5, open_weekends: false)
josie = Supplier.create!(name: "Josie's Apple Orchard", number_of_employees: 31, open_weekends: true)

kevin.supply_trucks.create!(driver_name: "Donald Eugene", number_of_daily_deliveries: 15, refrigerated: true)
kevin.supply_trucks.create!(driver_name: "Carrot Carl", number_of_daily_deliveries: 20, refrigerated: true)

wes.supply_trucks.create!(driver_name: "John Loron", number_of_daily_deliveries: 15, refrigerated: false)
wes.supply_trucks.create!(driver_name: "Big Bella", number_of_daily_deliveries: 8, refrigerated: true)
wes.supply_trucks.create!(driver_name: "Jacki LaClaire", number_of_daily_deliveries: 16, refrigerated: true)

josie.supply_trucks.create!(driver_name: "Daisy Wicks", number_of_daily_deliveries: 32, refrigerated: false)
josie.supply_trucks.create!(driver_name: "Kevin Kevinson", number_of_daily_deliveries: 16, refrigerated: false)
