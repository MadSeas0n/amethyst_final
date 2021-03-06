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

ActiveRecord::Schema.define(version: 20141007100249) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "cart_items", force: true do |t|
    t.integer  "item_id"
    t.integer  "cart_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "quantity",   default: 1
    t.integer  "order_id"
  end

  add_index "cart_items", ["cart_id"], name: "index_cart_items_on_cart_id"
  add_index "cart_items", ["item_id"], name: "index_cart_items_on_item_id"
  add_index "cart_items", ["order_id"], name: "index_cart_items_on_order_id"

  create_table "carts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "lcode"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "supplier_name"
    t.decimal  "weight",                precision: 8, scale: 2
    t.string   "supplier"
    t.decimal  "purchase_kg_usd",       precision: 8, scale: 2
    t.decimal  "purchase_kg_rur",       precision: 8, scale: 2
    t.decimal  "shipping_kg_usd",       precision: 8, scale: 2
    t.decimal  "shipping_kg_rur",       precision: 8, scale: 2
    t.decimal  "purachse_per_item_usd", precision: 8, scale: 2
    t.decimal  "purachse_per_item_rur", precision: 8, scale: 2
    t.decimal  "shipping_per_item_usd", precision: 8, scale: 2
    t.decimal  "shipping_per_item_rur", precision: 8, scale: 2
    t.decimal  "self_cost_usd",         precision: 8, scale: 2
    t.decimal  "self_cost_rur",         precision: 8, scale: 2
    t.decimal  "sale_cost",             precision: 8, scale: 2
    t.decimal  "sale_cost_final",       precision: 8, scale: 2
    t.integer  "wh_quantity",                                   default: 0
    t.string   "photo"
  end

  create_table "orders", force: true do |t|
    t.text     "comments"
    t.string   "payment_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "total",           precision: 8, scale: 2
    t.string   "store"
    t.string   "order_items"
    t.string   "order_lcodes"
    t.string   "order_suppliers"
  end

  create_table "sold_items", force: true do |t|
    t.string   "title"
    t.string   "lcode"
    t.decimal  "price"
    t.string   "order_number"
    t.string   "supplier"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
