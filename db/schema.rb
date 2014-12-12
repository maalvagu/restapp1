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

ActiveRecord::Schema.define(version: 20141212145830) do

  create_table "cities", force: true do |t|
    t.string   "name"
    t.integer  "dpto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cities", ["dpto_id"], name: "index_cities_on_dpto_id"

  create_table "dptos", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.boolean  "status_order"
    t.datetime "date_order"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["user_id"], name: "index_orders_on_user_id"

  create_table "product_orders", force: true do |t|
    t.integer  "count_product"
    t.integer  "order_id"
    t.integer  "restaurant_product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "product_orders", ["order_id"], name: "index_product_orders_on_order_id"
  add_index "product_orders", ["restaurant_product_id"], name: "index_product_orders_on_restaurant_product_id"

  create_table "products", force: true do |t|
    t.string   "name"
    t.integer  "unit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "restaurant_products", force: true do |t|
    t.string   "rest_product"
    t.string   "status"
    t.float    "price"
    t.integer  "restaurant_id"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "restaurant_products", ["product_id"], name: "index_restaurant_products_on_product_id"
  add_index "restaurant_products", ["restaurant_id"], name: "index_restaurant_products_on_restaurant_id"

  create_table "restaurants", force: true do |t|
    t.string   "name"
    t.integer  "nit"
    t.string   "phone"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "city_id"
    t.string   "neightborhood"
  end

  add_index "restaurants", ["city_id"], name: "index_restaurants_on_city_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "lastname"
    t.string   "phone"
    t.string   "cellphone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
