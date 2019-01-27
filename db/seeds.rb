# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

flamethrower_arms = Arm.create(name: "Flamethrower Arms", img: "flamethrower_arms.png", limg: "flamethrower_arm_l.png", rimg: "flamethrower_arm_r.png", weight: 62, power: 244, defense: 384, cuteness: 142)
bear_arms = Arm.create(name: "Bear Arms", img: "bear_arms.png", limg: "bear_arm_l.png", rimg: "bear_arm_r.png", weight: 72, power: 20, defense: 524, cuteness: 388)
gun_arms = Arm.create(name: "Gun Arms", img: "gun_arms.png", limg: "gun_arm_l.png", rimg: "gun_arm_r.png", weight: 47, power: 20, defense: 420, cuteness: 426)
hook_arms = Arm.create(name: "Hook Arms", img: "hook_arms.png", limg: "hook_arm_l.png", rimg: "hook_arm_r.png", weight: 29, power: 108, defense: 392, cuteness: 203)
lobster_arms = Arm.create(name: "Lobster Arms", img: "lobster_arms.png", limg: "lobster_arm_l.png", rimg: "lobster_arm_r.png", weight: 83, power: 162, defense: 676, cuteness: 354)
shield_arms = Arm.create(name: "Shield Arms", img: "shield_arms.png", limg: "shield_arm_l.png", rimg: "shield_arm_r.png", weight: 96, power: 43, defense: 816, cuteness: 121)

tank_legs = Leg.create(name: "Tank Legs", img: "tank_legs.png", weight: 250, power: 49, defense: 984, speed: 274)
horse_legs = Leg.create(name: "Horse Legs", img: "horse_legs.png", weight: 162, power: 135, defense: 416, speed: 785)
rocket_legs = Leg.create(name: "Rocket Legs", img: "rocket_legs.png", weight: 194, power: 111, defense: 612, speed: 978)
high_heel_legs = Leg.create(name: "High Heel Legs", img: "high_heel_legs.png", weight: 108, power: 150, defense: 284, speed: 398)

laser_eyes_head = Head.create(name: "Laser Eyes Head", img: "laser_eyes_head.png", weight: 57, power: 123, defense: 304, cuteness: 421, intelligence: 873)
mustache_head = Head.create(name: "Mustache Head", img: "mustache_head.png", weight: 51, power: 43, defense: 240, cuteness: 326, intelligence: 711)
zombie_head = Head.create(name: "Zombie Head", img: "zombie_head.png", weight: 74, power: 58, defense: 140, cuteness: 483, intelligence: 213)
heart_eyes_head = Head.create(name: "Heart Eyes Head", img: "heart_eyes_head.png", weight: 45, power: 0, defense: 84, cuteness: 394, intelligence: 654)

lumberjack_torso = Torso.create(name: "Lumberjack Torso", img: "lumberjack_torso.png", weight: 134, power: 10, defense: 648, dadbod: true)
turtle_shell_torso = Torso.create(name: "Turtle Shell Torso", img: "turtle_shell_torso.png", weight: 162, power: 18, defense: 776, dadbod: false)
iron_man_torso = Torso.create(name: "Iron Man Torso", img: "iron_man_torso.png", weight: 214, power: 208, defense: 792, dadbod: false)
sumo_torso = Torso.create(name: "Sumo Torso", img: "sumo_torso.png", weight: 235, power: 101, defense: 692, dadbod: true)

manbearpig = Monster.create(name: "Manbearpig", head: laser_eyes_head, torso: iron_man_torso, arm: bear_arms, leg: tank_legs)
curmudgeon = Monster.create(name: "The Curmudgeon", head: zombie_head, torso: lumberjack_torso, arm: lobster_arms, leg: horse_legs)
boyfriend = Monster.create(name: "Sarah's Boyfriend", head: mustache_head, torso: sumo_torso, arm: flamethrower_arms, leg: rocket_legs)
romeo = Monster.create(name: "Cap'n Romeo", head: heart_eyes_head, torso: turtle_shell_torso, arm: hook_arms, leg: high_heel_legs)

faker_cats = [
  "planet",
  "moon",
  "galaxy",
  "constellation",
  "star"
]

while Monster.all.count < 16 do
  faker_cat = faker_cats.sample
  Monster.create(name: Faker::Space.public_send(faker_cat).tr("0-9", "").strip, head: Head.all.sample, torso: Torso.all.sample, arm: Arm.all.sample, leg: Leg.all.sample)
end
