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

ActiveRecord::Schema.define(version: 20150131081553) do

  create_table "accounts", force: :cascade do |t|
    t.string   "name",                   limit: 255
    t.string   "email",                  limit: 255,              null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "accounts", ["confirmation_token"], name: "index_accounts_on_confirmation_token", unique: true, using: :btree
  add_index "accounts", ["email"], name: "index_accounts_on_email", using: :btree
  add_index "accounts", ["reset_password_token"], name: "index_accounts_on_reset_password_token", unique: true, using: :btree

  create_table "numbers", force: :cascade do |t|
    t.integer  "twillio_account_id", limit: 4
    t.string   "number",             limit: 255
    t.integer  "request_method",     limit: 1,   default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "numbers", ["twillio_account_id"], name: "index_numbers_on_twillio_account_id", using: :btree

  create_table "twillios", force: :cascade do |t|
    t.integer  "account_id",        limit: 4
    t.string   "sid",               limit: 255
    t.string   "auth_token",        limit: 255
    t.string   "test_sid",          limit: 255
    t.string   "test_auth_token",   limit: 255
    t.string   "test_phone_number", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "twillios", ["account_id"], name: "index_twillios_on_account_id", using: :btree

end
