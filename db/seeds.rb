# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
laser_eyes_head = Head.create(name: "Laser Eyes Head", weight: 43, power: 314, defense: 112, cuteness: 10, intelligence: 7)

mustache_head = Head.create(name: "Mustache Head", weight: 32, power: 18, defense: 54, cuteness: 12, intelligence: 10)

zombie_head = Head.create(name: "Zombie Head", weight: 28, power: 82, defense: 3, cuteness: 14, intelligence: 1)

heart_eyes_head = Head.create(name: "Heart Eyes Head", weight: 35, power: 150, defense: 111, cuteness: 20, intelligence: 8)

lumberjack_torso = Torso.create(name: "Lumberjack Torso", weight: 250, power: 0, defense: 695, dadbod: true)

turtle_shell_torso = Torso.create(name: "Turtle Shell Torso", weight: 410, power: 0, defense: 877, dadbod: false)

iron_man_torso = Torso.create(name: "Iron Man Torso", weight: 573, power: 278, defense: 900, dadbod: false)

sumo_torso = Torso.create(name: "Sumo Torso", weight: 600, power: 103, defense: 708, dadbod: true)
