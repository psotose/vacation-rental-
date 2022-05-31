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

ActiveRecord::Schema.define(version: 2022_05_31_205614) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cabin_pics", force: :cascade do |t|
    t.string "pictures"
    t.bigint "cabin_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cabin_id"], name: "index_cabin_pics_on_cabin_id"
  end

  create_table "cabins", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.decimal "price", precision: 12, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.bigint "cabin_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "email"
    t.index ["cabin_id"], name: "index_reservations_on_cabin_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "rut"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "google_token"
    t.string "google_refresh_token"
  end

  add_foreign_key "cabin_pics", "cabins"
  add_foreign_key "reservations", "cabins"
  add_foreign_key "reservations", "users"
end
