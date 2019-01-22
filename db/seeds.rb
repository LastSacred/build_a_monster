# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
tank_legs = Leg.create(name: "Tank Legs", weight: 581, power: 105, defense: 930, speed: 37)
horse_legs = Leg.create(name: "Horse Legs", weight: 206, power: 304, defense: 536, speed: 174)
rocket_legs = Leg.create(name: "Rocket Legs", weight: 380, power: 261, defense: 763, speed: 191)
high_heel_legs = Leg.create(name: "High Heel Legs", weight: 143, power: 382, defense: 30, speed: 48)
