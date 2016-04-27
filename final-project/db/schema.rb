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

ActiveRecord::Schema.define(version: 20160427045725) do

  create_table "carts", force: :cascade do |t|
    t.integer "user_id"
    t.string  "status",  default: "active"
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "price"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "menu_id"
    t.string   "url_file_name"
    t.string   "url_content_type"
    t.integer  "url_file_size"
    t.datetime "url_updated_at"
  end

  create_table "menus", force: :cascade do |t|
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "menu_name"
    t.integer  "restaurant_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "item_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "cart_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string  "restaurant_name"
    t.string  "location"
    t.integer "user_id"
    t.string  "restaurant_url"
  end

  create_table "team", force: :cascade do |t|
    t.string  "team_member_first_name"
    t.string  "team_member_last_name"
    t.string  "work_days"
    t.string  "work_hours"
    t.string  "position"
    t.string  "phone_number"
    t.string  "email"
    t.string  "facebook"
    t.integer "restaurant_id"
  end

  create_table "users", force: :cascade do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.string  "email"
    t.string  "password_digest"
    t.boolean "admin",           default: false
  end

end
