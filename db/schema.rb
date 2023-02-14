# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_02_14_181247) do

  create_table "games", force: :cascade do |t|
    t.datetime "game_start"
    t.datetime "game_end"
    t.integer "capacity"
  end

  create_table "gyms", force: :cascade do |t|
    t.string "gym_name"
    t.text "address"
    t.integer "gym_phone_number"
    t.string "open_gym_hours"
  end

  create_table "players", force: :cascade do |t|
    t.string "player_name"
    t.string "player_email"
    t.integer "player_phone_number"
  end

end
