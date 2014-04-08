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

ActiveRecord::Schema.define(version: 20140408035421) do

  create_table "banned_sites", force: true do |t|
    t.datetime "banned_on"
    t.string   "domain"
    t.string   "reason"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clickies", force: true do |t|
    t.integer  "page_info_id"
    t.integer  "clicky_id"
    t.string   "url"
    t.integer  "banned_site_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clickies", ["banned_site_id"], name: "index_clickies_on_banned_site_id"
  add_index "clickies", ["clicky_id"], name: "index_clickies_on_clicky_id"
  add_index "clickies", ["page_info_id"], name: "index_clickies_on_page_info_id"

  create_table "delayed_jobs", force: true do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority"

  create_table "host_infos", force: true do |t|
    t.integer  "clicky_id"
    t.string   "ip"
    t.string   "domain"
    t.string   "status"
    t.integer  "ping"
    t.boolean  "blacklisted"
    t.datetime "blacklisted_on"
    t.datetime "checked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "host_infos", ["clicky_id"], name: "index_host_infos_on_clicky_id"

  create_table "page_infos", force: true do |t|
    t.integer  "clicky_id"
    t.string   "title"
    t.boolean  "nsfw"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "page_infos", ["clicky_id"], name: "index_page_infos_on_clicky_id"

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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
