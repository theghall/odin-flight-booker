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

ActiveRecord::Schema.define(version: 20171127023805) do

  create_table "airports", force: :cascade do |t|
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.integer "flight_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flights", force: :cascade do |t|
    t.integer "from_code_id"
    t.datetime "departs"
    t.integer "flight_time_mins"
    t.integer "to_code_id"
    t.string "arrival_date"
    t.string "date"
    t.time "arrival_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["departs"], name: "index_flights_on_departs"
    t.index ["from_code_id"], name: "index_flights_on_from_code_id"
    t.index ["to_code_id", "from_code_id"], name: "index_flights_on_to_code_id_and_from_code_id"
    t.index ["to_code_id"], name: "index_flights_on_to_code_id"
  end

  create_table "passenger_bookings", force: :cascade do |t|
    t.integer "booking_id"
    t.integer "passenger_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "passengers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
