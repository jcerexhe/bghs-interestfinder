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

ActiveRecord::Schema.define(version: 20160510001045) do

  create_table "events", force: :cascade do |t|
    t.integer  "interest_group_id"
    t.string   "name"
    t.datetime "time"
    t.datetime "date"
    t.text     "description"
    t.string   "location"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "events", ["interest_group_id"], name: "index_events_on_interest_group_id"

  create_table "group_members", force: :cascade do |t|
    t.integer  "user_id",           null: false
    t.integer  "interest_group_id", null: false
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "group_members", ["interest_group_id"], name: "index_group_members_on_interest_group_id"
  add_index "group_members", ["user_id"], name: "index_group_members_on_user_id"

  create_table "interest_groups", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "image"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "interest_groups", ["user_id"], name: "index_interest_groups_on_user_id"

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
