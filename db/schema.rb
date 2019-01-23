# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_01_23_205834) do

  create_table "arms", force: :cascade do |t|
    t.string "name"
    t.string "limg"
    t.string "rimg"
    t.integer "weight"
    t.integer "power"
    t.integer "defense"
    t.integer "cuteness"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "img"
  end

  create_table "heads", force: :cascade do |t|
    t.string "name"
    t.string "img"
    t.integer "weight"
    t.integer "power"
    t.integer "defense"
    t.integer "cuteness"
    t.integer "intelligence"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "legs", force: :cascade do |t|
    t.string "name"
    t.string "img"
    t.integer "weight"
    t.integer "power"
    t.integer "defense"
    t.integer "speed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "monsters", force: :cascade do |t|
    t.string "name"
    t.integer "head_id"
    t.integer "torso_id"
    t.integer "leg_id"
    t.integer "arm_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["arm_id"], name: "index_monsters_on_arm_id"
    t.index ["head_id"], name: "index_monsters_on_head_id"
    t.index ["leg_id"], name: "index_monsters_on_leg_id"
    t.index ["torso_id"], name: "index_monsters_on_torso_id"
  end

  create_table "torsos", force: :cascade do |t|
    t.string "name"
    t.string "img"
    t.integer "weight"
    t.integer "power"
    t.integer "defense"
    t.boolean "dadbod"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
