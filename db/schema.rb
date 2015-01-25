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

  create_table "dishes", force: :cascade do |t|
    t.string "name"
    t.text   "description"
  end

  create_table "friends", force: :cascade do |t|
    t.integer "user_id"
    t.integer "friend"
  end

  add_index "friends", ["user_id"], name: "index_friends_on_user_id"

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
  end

  create_table "recipes", force: :cascade do |t|
    t.integer "dish_id"
    t.integer "ingredient_id"
    t.decimal "quantity"
    t.string  "unit"
  end

  add_index "recipes", ["dish_id"], name: "index_recipes_on_dish_id"
  add_index "recipes", ["ingredient_id"], name: "index_recipes_on_ingredient_id"

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password"
  end

end
