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

ActiveRecord::Schema.define(version: 2019_05_25_193515) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "admin_zones", force: :cascade do |t|
    t.integer "user_id"
    t.integer "zone_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_admin_zones_on_user_id"
    t.index ["zone_id"], name: "index_admin_zones_on_zone_id"
  end

  create_table "comments", force: :cascade do |t|
    t.string "description"
    t.integer "up_vote_amount"
    t.integer "down_vote_amount"
    t.integer "user_id"
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_comments_on_post_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "innappropiate_requests", force: :cascade do |t|
    t.date "date"
    t.string "title"
    t.text "justification"
    t.integer "user_id"
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_innappropiate_requests_on_post_id"
    t.index ["user_id"], name: "index_innappropiate_requests_on_user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "up_vote_amount"
    t.integer "down_vote_amount"
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
    t.integer "user_id"
    t.integer "zone_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_posts_on_user_id"
    t.index ["zone_id"], name: "index_posts_on_zone_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_type"
    t.string "name"
    t.string "lastname"
    t.string "email", default: "", null: false
    t.string "password"
    t.string "picture"
    t.text "bio"
    t.integer "gps_location"
    t.string "city"
    t.string "country"
    t.boolean "in_blacklist"
    t.boolean "suspended"
    t.integer "previously_suspension"
    t.integer "zone_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["zone_id"], name: "index_users_on_zone_id"
  end

  create_table "votes", force: :cascade do |t|
    t.boolean "down_or_up_vote"
    t.date "date"
    t.integer "user_id"
    t.integer "post_id"
    t.integer "comment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id"], name: "index_votes_on_comment_id"
    t.index ["post_id"], name: "index_votes_on_post_id"
    t.index ["user_id"], name: "index_votes_on_user_id"
  end

  create_table "zones", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
