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

ActiveRecord::Schema.define(version: 20150329011551) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "organizations", force: :cascade do |t|
    t.string  "name",    default: "",   null: false
    t.string  "address", default: "",   null: false
    t.string  "city",    default: "",   null: false
    t.string  "state",   default: "",   null: false
    t.string  "zip",     default: "",   null: false
    t.boolean "active",  default: true, null: false
  end

  create_table "providers", force: :cascade do |t|
    t.integer  "organization_id"
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "first_name",             default: "",    null: false
    t.string   "last_name",              default: "",    null: false
    t.boolean  "is_admin",               default: false, null: false
    t.boolean  "is_owner",               default: false, null: false
    t.boolean  "active",                 default: true,  null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,     null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "providers", ["confirmation_token"], name: "index_providers_on_confirmation_token", unique: true, using: :btree
  add_index "providers", ["email"], name: "index_providers_on_email", unique: true, using: :btree
  add_index "providers", ["reset_password_token"], name: "index_providers_on_reset_password_token", unique: true, using: :btree
  add_index "providers", ["unlock_token"], name: "index_providers_on_unlock_token", unique: true, using: :btree

  create_table "receivers", force: :cascade do |t|
    t.integer  "organization_id"
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "first_name",             default: "",    null: false
    t.string   "last_name",              default: "",    null: false
    t.boolean  "is_admin",               default: false, null: false
    t.boolean  "is_owner",               default: false, null: false
    t.boolean  "active",                 default: true,  null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,     null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "address",                default: "",    null: false
    t.string   "city",                   default: "",    null: false
    t.string   "state",                  default: "",    null: false
    t.string   "postal_code",            default: "",    null: false
    t.float    "longitude"
    t.float    "latitude"
  end

  add_index "receivers", ["confirmation_token"], name: "index_receivers_on_confirmation_token", unique: true, using: :btree
  add_index "receivers", ["email"], name: "index_receivers_on_email", unique: true, using: :btree
  add_index "receivers", ["reset_password_token"], name: "index_receivers_on_reset_password_token", unique: true, using: :btree
  add_index "receivers", ["unlock_token"], name: "index_receivers_on_unlock_token", unique: true, using: :btree

end
