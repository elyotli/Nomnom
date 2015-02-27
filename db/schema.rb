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

ActiveRecord::Schema.define(version: 20150227204713) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "businesses", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "item_details", force: true do |t|
    t.integer "item_option_id"
    t.text    "name"
    t.float   "price"
  end

  create_table "item_options", force: true do |t|
    t.integer  "item_id"
    t.string   "name"
    t.text     "description"
    t.integer  "display_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "item_permutations", force: true do |t|
    t.integer "item_id"
    t.string  "options"
    t.integer "item_detail_id"
  end

  create_table "items", force: true do |t|
    t.integer  "submenu_id"
    t.string   "name",        null: false
    t.text     "description"
    t.string   "image_path"
    t.float    "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menus", force: true do |t|
    t.integer "business_id"
    t.text    "name"
    t.text    "description"
  end

  create_table "submenus", force: true do |t|
    t.integer  "menu_id"
    t.text     "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name", null: false
    t.string   "last_name"
    t.date     "dob"
    t.string   "phone",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "visits", force: true do |t|
    t.integer  "user_id"
    t.integer  "business_id"
    t.float    "total"
    t.hstore   "order_details"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "status"
  end

end
