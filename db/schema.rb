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

ActiveRecord::Schema.define(version: 2019_01_30_141137) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agents", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "company"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matches", force: :cascade do |t|
    t.bigint "property_id"
    t.bigint "renter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["property_id"], name: "index_matches_on_property_id"
    t.index ["renter_id"], name: "index_matches_on_renter_id"
  end

  create_table "properties", force: :cascade do |t|
    t.bigint "agent_id"
    t.integer "bedrooms"
    t.integer "bathrooms"
    t.float "distance_to_subway"
    t.string "borough"
    t.string "neighborhood"
    t.boolean "pet_friendly"
    t.boolean "elevator"
    t.boolean "laundry"
    t.boolean "doorman"
    t.date "move_in_date"
    t.integer "rent"
    t.string "img_1"
    t.string "img_2"
    t.string "img_3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["agent_id"], name: "index_properties_on_agent_id"
  end

  create_table "renters", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.integer "bedrooms"
    t.integer "bathrooms"
    t.float "distance_to_subway"
    t.string "borough"
    t.string "neighborhood"
    t.boolean "pet_friendly"
    t.boolean "elevator"
    t.boolean "laundry"
    t.boolean "doorman"
    t.date "move_in_date"
    t.integer "rent_min"
    t.integer "rent_max"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
