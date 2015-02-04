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

ActiveRecord::Schema.define(version: 0) do

  create_table "friends", force: :cascade do |t|
    t.integer "user_id"
    t.integer "friend"
  end

  add_index "friends", ["user_id"], name: "index_friends_on_user_id"

  create_table "list_items", force: :cascade do |t|
    t.integer "list_id"
    t.integer "restaurant_id"
  end

  add_index "list_items", ["list_id"], name: "index_list_items_on_list_id"
  add_index "list_items", ["restaurant_id"], name: "index_list_items_on_restaurant_id"

  create_table "lists", force: :cascade do |t|
    t.integer "user_id"
    t.string  "name"
  end

  add_index "lists", ["user_id"], name: "index_lists_on_user_id"

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.text   "description"
    t.string "cuisine"
    t.text   "location"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "restaurant_id"
    t.integer "user_id"
    t.text    "review"
    t.integer "rating"
    t.text    "notes"
  end

  add_index "reviews", ["restaurant_id"], name: "index_reviews_on_restaurant_id"
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password"
  end

end
