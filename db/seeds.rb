# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

flamethrower_arms = Arm.create(name: "Flamethrower Arms", img: "flamethrower_arms.png", limg: "flamethrower_arm_l.png", rimg: "flamethrower_arm_r.png", weight: 115, power:391, defense: 370, cuteness: 8)
bear_arms = Arm.create(name: "Bear Arms", img: "bear_arms.png", limg: "bear_arm_l.png", rimg: "bear_arm_r.png", weight: 107, power:245, defense: 521, cuteness: 15)
# gun_arms = Arm.create(name: "Gun Arms", img: "bear_arms.png", limg: "bear_arm_l.png", rimg: "lobster_arm_r.png", weight: 100, power:35, defense: 420, cuteness: 19)
# hook_arms = Arm.create(name: "Hook Arms", img: "bear_arms.png", limg: "bear_arm_l.png", rimg: "lobster_arm_r.png", weight: 88, power:235, defense: 343, cuteness: 6)
lobster_arms = Arm.create(name: "Lobster Arms", img: "lobster_arms.png", limg: "lobster_arm_l.png", rimg: "lobster_arm_r.png", weight: 94, power:186, defense: 920, cuteness: 13)
# shield_arms = Arm.create(name: "Shield Arms", img: "bear_arms.png", limg: "bear_arm_l.png", rimg: "lobster_arm_r.png", weight: 136, power:77, defense: 950, cuteness: 5)

tank_legs = Leg.create(name: "Tank Legs", img: "tank_legs.png", weight: 581, power: 105, defense: 930, speed: 37)
horse_legs = Leg.create(name: "Horse Legs", img: "horse_legs.png", weight: 206, power: 304, defense: 536, speed: 174)
rocket_legs = Leg.create(name: "Rocket Legs", img: "rocket_legs.png", weight: 380, power: 261, defense: 763, speed: 191)
# high_heel_legs = Leg.create(name: "High Heel Legs", img: "tank_legs.png", weight: 143, power: 382, defense: 30, speed: 48)

laser_eyes_head = Head.create(name: "Laser Eyes Head", img: "laser_eyes_head.png", weight: 43, power: 314, defense: 112, cuteness: 10, intelligence: 7)
mustache_head = Head.create(name: "Mustache Head", img: "mustache_head.png", weight: 32, power: 18, defense: 54, cuteness: 12, intelligence: 10)
zombie_head = Head.create(name: "Zombie Head", img: "zombie_head.png", weight: 28, power: 82, defense: 3, cuteness: 14, intelligence: 1)
# heart_eyes_head = Head.create(name: "Heart Eyes Head", img: "laser_eyes_head.png", weight: 35, power: 150, defense: 111, cuteness: 20, intelligence: 8)

lumberjack_torso = Torso.create(name: "Lumberjack Torso", img: "lumberjack_torso.png", weight: 250, power: 0, defense: 695, dadbod: true)
# turtle_shell_torso = Torso.create(name: "Turtle Shell Torso", img: "lumberjack_torso.png", weight: 410, power: 0, defense: 877, dadbod: false)
iron_man_torso = Torso.create(name: "Iron Man Torso", img: "iron_man_torso.png", weight: 573, power: 278, defense: 900, dadbod: false)
sumo_torso = Torso.create(name: "Sumo Torso", img: "sumo_torso.png", weight: 600, power: 103, defense: 708, dadbod: true)

manbearpig = Monster.create(name: "Manbearpig", head: laser_eyes_head, torso: iron_man_torso, arm: bear_arms, leg: tank_legs)
curmudgeon = Monster.create(name: "The Curmudgeon", head: zombie_head, torso: lumberjack_torso, arm: lobster_arms, leg: horse_legs)
boyfriend = Monster.create(name: "Sarah's Boyfriend", head: mustache_head, torso: sumo_torso, arm: flamethrower_arms, leg: rocket_legs)

faker_cats = [
  "planet",
  "moon",
  "galaxy",
  "constellation",
  "star"
]

50.times do
  faker_cat = faker_cats.sample
  Monster.create(name: Faker::Space.public_send(faker_cat).tr("0-9", "").strip, head: Head.all.sample, torso: Torso.all.sample, arm: Arm.all.sample, leg: Leg.all.sample)
end
