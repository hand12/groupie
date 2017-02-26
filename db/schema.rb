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

  create_table "consumers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "gender",        default: 0
    t.integer "age"
    t.integer "product_id"
    t.integer "prefecture_id"
    t.index ["prefecture_id"], name: "index_consumers_on_prefecture_id", using: :btree
    t.index ["product_id"], name: "index_consumers_on_product_id", using: :btree
  end

  create_table "large_categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
  end

  create_table "large_tabs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "large_category_id"
    t.integer "tab_id"
    t.index ["large_category_id"], name: "index_large_tabs_on_large_category_id", using: :btree
    t.index ["tab_id"], name: "index_large_tabs_on_tab_id", using: :btree
  end

  create_table "middle_categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "name"
    t.integer "large_category_id"
    t.index ["large_category_id"], name: "index_middle_categories_on_large_category_id", using: :btree
  end

  create_table "prefectures", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "name"
    t.integer "area", default: 0
  end

  create_table "products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "cost"
    t.integer  "buy_count"
    t.integer  "year"
    t.datetime "order_time"
    t.integer  "favorite_count"
    t.float    "review_average",    limit: 24
    t.integer  "state",                        default: 0
    t.integer  "consumer_id"
    t.integer  "large_category_id"
    t.index ["consumer_id"], name: "index_products_on_consumer_id", using: :btree
    t.index ["large_category_id"], name: "index_products_on_large_category_id", using: :btree
  end

  create_table "tabs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "status", default: 0
  end

end
