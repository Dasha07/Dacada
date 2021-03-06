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

ActiveRecord::Schema.define(version: 20170201194712) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.float    "discount"
    t.float    "price"
    t.datetime "deal_date"
    t.string   "manufacturer"
    t.integer  "stock"
    t.integer  "category_id"
    t.string   "photo"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "items", ["category_id"], name: "index_items_on_category_id", using: :btree

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree

  create_table "purchases", force: :cascade do |t|
    t.float    "shipping_cost"
    t.integer  "shipping_time"
    t.integer  "user_id"
    t.integer  "item_id"
    t.integer  "order_id"
    t.integer  "quantity"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "purchases", ["item_id"], name: "index_purchases_on_item_id", using: :btree
  add_index "purchases", ["order_id"], name: "index_purchases_on_order_id", using: :btree
  add_index "purchases", ["user_id"], name: "index_purchases_on_user_id", using: :btree

  create_table "reviews", force: :cascade do |t|
    t.string   "title"
    t.string   "content"
    t.integer  "rating"
    t.integer  "item_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "reviews", ["item_id"], name: "index_reviews_on_item_id", using: :btree
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "card_number"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "password_digest"
    t.boolean  "notification"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "items", "categories"
  add_foreign_key "orders", "users"
  add_foreign_key "purchases", "items"
  add_foreign_key "purchases", "orders"
  add_foreign_key "purchases", "users"
  add_foreign_key "reviews", "items"
  add_foreign_key "reviews", "users"
end
