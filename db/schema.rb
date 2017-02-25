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

ActiveRecord::Schema.define(version: 20170225133753) do

  create_table "consumer_prefectures", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "consumer_id"
    t.integer  "prefecture_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["consumer_id"], name: "index_consumer_prefectures_on_consumer_id", using: :btree
    t.index ["prefecture_id"], name: "index_consumer_prefectures_on_prefecture_id", using: :btree
  end

  create_table "consumers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "gender"
    t.integer  "age"
    t.integer  "period"
    t.string   "carrier"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_consumers_on_product_id", using: :btree
  end

  create_table "large_categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "large_middles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "large_category_id"
    t.integer  "middle_category_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["large_category_id"], name: "index_large_middles_on_large_category_id", using: :btree
    t.index ["middle_category_id"], name: "index_large_middles_on_middle_category_id", using: :btree
  end

  create_table "large_tabs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "large_category_id"
    t.integer  "tab_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["large_category_id"], name: "index_large_tabs_on_large_category_id", using: :btree
    t.index ["tab_id"], name: "index_large_tabs_on_tab_id", using: :btree
  end

  create_table "middle_categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prefectures", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "cost"
    t.integer  "buy_count"
    t.integer  "quarter"
    t.datetime "year"
    t.integer  "favorite_count"
    t.float    "review_average", limit: 24
    t.integer  "state"
    t.integer  "consumer_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["consumer_id"], name: "index_products_on_consumer_id", using: :btree
  end

  create_table "tabs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
