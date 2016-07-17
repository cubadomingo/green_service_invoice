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

ActiveRecord::Schema.define(version: 20160717024751) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.integer  "phone_number", limit: 8
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.string   "address_line"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "apt"
    t.text     "service_description"
    t.date     "date"
    t.decimal  "balance_amount"
    t.decimal  "labor_price"
    t.decimal  "total_price"
    t.decimal  "deposit_amount"
    t.integer  "warranty"
    t.boolean  "invoice_status"
    t.string   "payment_type"
    t.integer  "last_4_digits_card"
    t.integer  "check_number"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "customer_id"
    t.integer  "technician_id"
    t.string   "appliance_brand"
    t.string   "appliance_type"
    t.string   "appliance_model"
  end

  add_index "invoices", ["customer_id"], name: "index_invoices_on_customer_id", using: :btree
  add_index "invoices", ["technician_id"], name: "index_invoices_on_technician_id", using: :btree

  create_table "orders", force: :cascade do |t|
    t.integer  "part_id"
    t.integer  "invoice_id"
    t.integer  "quantity"
    t.decimal  "parts_amount"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "orders", ["invoice_id"], name: "index_orders_on_invoice_id", using: :btree
  add_index "orders", ["part_id"], name: "index_orders_on_part_id", using: :btree

  create_table "parts", force: :cascade do |t|
    t.string   "part_number"
    t.decimal  "retail_price"
    t.integer  "stock_amount"
    t.decimal  "wholesale_price"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "name"
  end

  create_table "technicians", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "invoices", "customers"
  add_foreign_key "invoices", "technicians"
end
