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

ActiveRecord::Schema.define(version: 20140504122111) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cases", force: true do |t|
    t.integer  "case_identifier",                null: false
    t.text     "notes",                          null: false
    t.integer  "timmer",          default: 5,    null: false
    t.integer  "person_id",                      null: false
    t.integer  "user_id",                        null: false
    t.boolean  "active",          default: true, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clues", force: true do |t|
    t.text     "info",       null: false
    t.integer  "user_id",    null: false
    t.integer  "case_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "identities", force: true do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.string   "oauth_token"
    t.string   "oauth_secret"
    t.datetime "oauth_expires_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "identities", ["user_id"], name: "index_identities_on_user_id", using: :btree

  create_table "people", force: true do |t|
    t.string   "first_name",                null: false
    t.string   "last_name",                 null: false
    t.string   "age",                       null: false
    t.string   "hair_color",                null: false
    t.string   "image_url"
    t.string   "eye_color",                 null: false
    t.string   "height",                    null: false
    t.string   "weight",                    null: false
    t.string   "race",                      null: false
    t.string   "visual_characteristics"
    t.string   "sex",                       null: false
    t.text     "last_seen_location",        null: false
    t.date     "last_seen_date",            null: false
    t.text     "notes"
    t.string   "build_type",                null: false
    t.string   "relationship_to_submitter"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_notifications", force: true do |t|
    t.integer  "user_id"
    t.text     "medium"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
