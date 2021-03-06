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

ActiveRecord::Schema.define(version: 20151216094805) do

  create_table "menu_item_options", force: :cascade do |t|
    t.string   "code",         limit: 255
    t.string   "name",         limit: 255
    t.text     "description",  limit: 65535
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "menu_item_id", limit: 4
  end

  create_table "menu_items", force: :cascade do |t|
    t.integer  "order",       limit: 4
    t.string   "code",        limit: 255
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.decimal  "price",                     precision: 10
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.integer  "menu_id",     limit: 4
  end

  create_table "menus", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.date     "date_from"
    t.date     "date_to"
    t.text     "description",  limit: 65535
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "menu_item_id", limit: 4
  end

  create_table "tables", force: :cascade do |t|
    t.integer  "number",     limit: 4
    t.integer  "max_seats",  limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "waitrons", force: :cascade do |t|
    t.string   "logon",      limit: 255
    t.string   "name",       limit: 255
    t.string   "surname",    limit: 255
    t.string   "mobile",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
