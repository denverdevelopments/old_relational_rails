# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

## Kevin side
Chef.destroy_all
# Chef.connection.truncate(Chef.table_name)
Restaurant.destroy_all
# Restaurant.connection.truncate(Restaurant.table_name)


tgik = Restaurant.create!(name: "TGI Kevin's", capacity: 220, has_bar: false)
wicks = Restaurant.create!(name: "Wicks Saloon n' Honkytonk", capacity: 95, has_bar: true)
miller = Restaurant.create!(name: "Miller Brew Pub", capacity: 48, has_bar: true)

tgik.chefs.create!(name: "Kevon Loron", years_worked: 4, can_close: false)
tgik.chefs.create!(name: "Lordon Gamsey", years_worked: 2, can_close: true)
tgik.chefs.create!(name: "Chulia Jild", years_worked: 9, can_close: false)

wicks.chefs.create!(name: "Earp Wyatt", years_worked: 9, can_close: false)
wicks.chefs.create!(name: "Jessie Holiday", years_worked: 9, can_close: false)

miller.chefs.create!(name: "Jacque Milair", years_worked: 6, can_close: true)

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
