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

ActiveRecord::Schema.define(version: 2019_09_13_210026) do

  create_table "nail_plates", force: :cascade do |t|
    t.integer "nail_id"
    t.integer "plate_id"
    t.integer "design_num"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nail_polishes", force: :cascade do |t|
    t.integer "nail_id"
    t.integer "polish_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nails", force: :cascade do |t|
    t.string "name"
    t.integer "project_id"
    t.string "texture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plates", force: :cascade do |t|
    t.string "collection_name"
    t.integer "number"
    t.string "img"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "polishes", force: :cascade do |t|
    t.string "collection"
    t.string "name"
    t.string "red"
    t.string "blue"
    t.string "green"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
