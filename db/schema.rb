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

ActiveRecord::Schema.define(version: 20160716043635) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
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

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

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

  create_table "appliance_parts", force: :cascade do |t|
    t.integer  "appliance_id"
    t.integer  "part_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "part_quantity"
    t.integer  "invoice_id"
  end

  add_index "appliance_parts", ["appliance_id"], name: "index_appliance_parts_on_appliance_id", using: :btree
  add_index "appliance_parts", ["invoice_id"], name: "index_appliance_parts_on_invoice_id", using: :btree
  add_index "appliance_parts", ["part_id"], name: "index_appliance_parts_on_part_id", using: :btree

  create_table "appliances", force: :cascade do |t|
    t.string   "appliance_brand"
    t.string   "appliance_type"
    t.string   "appliance_model"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

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
    t.float    "balance_amount"
    t.float    "tax"
    t.float    "labor_price"
    t.float    "total_price"
    t.float    "deposit_amount"
    t.integer  "warranty"
    t.boolean  "invoice_status"
    t.float    "total_parts_price"
    t.string   "payment_type"
    t.integer  "last_4_digits_card"
    t.integer  "check_number"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "customer_id"
    t.integer  "technician_id"
  end

  add_index "invoices", ["customer_id"], name: "index_invoices_on_customer_id", using: :btree
  add_index "invoices", ["technician_id"], name: "index_invoices_on_technician_id", using: :btree

  create_table "parts", force: :cascade do |t|
    t.string   "part_number"
    t.decimal  "part_price"
    t.string   "part_name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
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

  add_foreign_key "appliance_parts", "invoices"
  add_foreign_key "invoices", "customers"
  add_foreign_key "invoices", "technicians"
end
