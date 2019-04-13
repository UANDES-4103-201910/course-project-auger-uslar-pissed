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

ActiveRecord::Schema.define(version: 2019_04_13_033239) do

  create_table "admin_zones", force: :cascade do |t|
    t.integer "user_id"
    t.integer "zone_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_admin_zones_on_user_id"
    t.index ["zone_id"], name: "index_admin_zones_on_zone_id"
  end

  create_table "comments", force: :cascade do |t|
    t.integer "up_vote_amount"
    t.integer "down_vote_amount"
    t.integer "user_id"
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "content"
    t.index ["post_id"], name: "index_comments_on_post_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "innappropiate_requests", force: :cascade do |t|
    t.date "date"
    t.text "justification"
    t.integer "user_id"
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_innappropiate_requests_on_post_id"
    t.index ["user_id"], name: "index_innappropiate_requests_on_user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "site"
    t.text "description"
    t.date "date"
    t.string "city"
    t.string "country"
    t.integer "gps_location"
    t.string "image"
    t.string "file_atachment"
    t.boolean "open"
    t.boolean "solved"
    t.integer "innapropiated_count"
    t.boolean "in_dumpster"
    t.boolean "is_hidden"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "user_type"
    t.string "email_address"
    t.string "password"
    t.string "picture"
    t.text "bio"
    t.integer "gps_location"
    t.string "city"
    t.string "country"
    t.string "string"
    t.boolean "in_blacklist"
    t.boolean "suspended"
    t.integer "previously_suspension"
    t.integer "zone_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["zone_id"], name: "index_users_on_zone_id"
  end

  create_table "votes", force: :cascade do |t|
    t.boolean "up_vote"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "zones", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
