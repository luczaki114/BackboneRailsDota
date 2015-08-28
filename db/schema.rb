# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150828195914) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "heros", force: :cascade do |t|
    t.string   "name"
    t.string   "ability1"
    t.string   "ability2"
    t.string   "ability3"
    t.string   "ability4"
    t.string   "ability5"
    t.string   "ability6"
    t.integer  "str"
    t.float    "str_gain"
    t.integer  "agi"
    t.float    "agi_gain"
    t.integer  "intel"
    t.float    "intel_gain"
    t.integer  "move_speed"
    t.string   "sight_range"
    t.integer  "armor"
    t.float    "base_attack_time"
    t.string   "damage"
    t.float    "attack_point"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
