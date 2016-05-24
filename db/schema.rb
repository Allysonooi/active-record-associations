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

ActiveRecord::Schema.define(version: 20160524050808) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adcoms", force: :cascade do |t|
    t.integer  "admin_id"
    t.integer  "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "adcoms", ["admin_id"], name: "index_adcoms_on_admin_id", using: :btree
  add_index "adcoms", ["company_id"], name: "index_adcoms_on_company_id", using: :btree

  create_table "admins", force: :cascade do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "payment_method"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plans", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "billing_cycle"
    t.string   "next_billing_date"
    t.string   "deadline_date"
    t.integer  "admin_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "plans", ["admin_id"], name: "index_plans_on_admin_id", using: :btree

  create_table "plusrs", force: :cascade do |t|
    t.integer  "plan_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "plusrs", ["plan_id"], name: "index_plusrs_on_plan_id", using: :btree
  add_index "plusrs", ["user_id"], name: "index_plusrs_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "contact"
    t.string   "payment_details"
    t.integer  "admin_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["admin_id"], name: "index_users_on_admin_id", using: :btree

  add_foreign_key "adcoms", "admins"
  add_foreign_key "adcoms", "companies"
  add_foreign_key "plans", "admins"
  add_foreign_key "plusrs", "plans"
  add_foreign_key "plusrs", "users"
  add_foreign_key "users", "admins"
end
