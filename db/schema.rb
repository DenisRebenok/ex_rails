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

ActiveRecord::Schema.define(version: 20150812231225) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "goods", force: :cascade do |t|
    t.integer  "code"
    t.string   "name"
    t.float    "weight"
    t.float    "width"
    t.float    "height"
    t.float    "length"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "goods_providers", force: :cascade do |t|
    t.integer  "good_id"
    t.integer  "provider_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "goods_providers", ["good_id"], name: "index_goods_providers_on_good_id", using: :btree
  add_index "goods_providers", ["provider_id"], name: "index_goods_providers_on_provider_id", using: :btree

  create_table "providers", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.text     "addrress"
    t.text     "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "goods_providers", "goods"
  add_foreign_key "goods_providers", "providers"
end