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

ActiveRecord::Schema.define(version: 20160207134325) do

  create_table "locals", force: :cascade do |t|
    t.string   "name"
    t.string   "city"
    t.string   "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quadros", force: :cascade do |t|
    t.integer  "num"
    t.integer  "alt"
    t.integer  "larg"
    t.string   "tec"
    t.integer  "price"
    t.integer  "ano"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "foto_file_name"
    t.string   "foto_content_type"
    t.integer  "foto_file_size"
    t.datetime "foto_updated_at"
    t.integer  "local_id"
    t.boolean  "galeria",           default: true
    t.boolean  "vendido",           default: false
    t.string   "link"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
  end

end
