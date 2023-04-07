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

ActiveRecord::Schema[7.0].define(version: 2023_04_07_112202) do
  create_table "flowers", force: :cascade do |t|
    t.integer "seller_id", null: false
    t.string "flower_type"
    t.string "name"
    t.float "price"
    t.string "image"
    t.boolean "inStock"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["seller_id"], name: "index_flowers_on_seller_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "flower_id", null: false
    t.integer "plant_id", null: false
    t.integer "quantity"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flower_id"], name: "index_orders_on_flower_id"
    t.index ["plant_id"], name: "index_orders_on_plant_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "plants", force: :cascade do |t|
    t.integer "seller_id", null: false
    t.string "plant_type"
    t.string "name"
    t.float "price"
    t.string "image"
    t.string "description"
    t.boolean "inStock"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["seller_id"], name: "index_plants_on_seller_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "name"
    t.string "email"
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "sellerprofiles", force: :cascade do |t|
    t.integer "seller_id", null: false
    t.string "name"
    t.string "email"
    t.string "username"
    t.string "store_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["seller_id"], name: "index_sellerprofiles_on_seller_id"
  end

  create_table "sellers", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.string "email"
    t.string "username"
    t.string "store_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.string "email"
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "flowers", "sellers"
  add_foreign_key "orders", "flowers"
  add_foreign_key "orders", "plants"
  add_foreign_key "orders", "users"
  add_foreign_key "plants", "sellers"
  add_foreign_key "profiles", "users"
  add_foreign_key "sellerprofiles", "sellers"
end
