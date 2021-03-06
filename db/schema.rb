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

ActiveRecord::Schema.define(version: 20170317142305) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "breeds", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dogs", force: :cascade do |t|
    t.boolean  "castrated",  default: false
    t.integer  "gender"
    t.date     "birth_date"
    t.string   "name"
    t.date     "last_visit"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "owner_id"
    t.integer  "breed_id"
    t.index ["breed_id"], name: "index_dogs_on_breed_id", using: :btree
    t.index ["owner_id"], name: "index_dogs_on_owner_id", using: :btree
  end

  create_table "owners", force: :cascade do |t|
    t.string   "phone"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "dogs", "breeds"
  add_foreign_key "dogs", "owners"
end
