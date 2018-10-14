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

ActiveRecord::Schema.define(version: 20181012045316) do

  create_table "acategories", force: :cascade do |t|
    t.string   "name"
    t.integer  "acategory_id"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "bcategories", force: :cascade do |t|
    t.string   "name"
    t.integer  "bcategory_id"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "blogs", force: :cascade do |t|
    t.string   "blog_title"
    t.string   "blog_writer"
    t.string   "blog_date"
    t.text     "blog_intro"
    t.string   "blog_image"
    t.text     "blog_ckeditor"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "user_id"
    t.integer  "bcategory_id"
    t.integer  "impressions_count"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.integer  "category_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.string   "data_fingerprint"
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "ckeditor_assets", ["type"], name: "index_ckeditor_assets_on_type"

  create_table "dealzons", force: :cascade do |t|
    t.string   "am_title"
    t.text     "am_intro"
    t.string   "am_link"
    t.string   "am_image"
    t.string   "am_code"
    t.string   "am_date"
    t.string   "am_price_is"
    t.string   "am_price_was"
    t.string   "am_price_sale"
    t.string   "am_review"
    t.string   "am_category"
    t.string   "am_expire"
    t.string   "am_shipping"
    t.string   "am_spare_01"
    t.string   "am_spare_02"
    t.string   "am_spare_03"
    t.string   "am_spare_04"
    t.string   "am_spare_05"
    t.string   "am_spare_06"
    t.string   "am_spare_07"
    t.string   "am_spare_08"
    t.string   "am_spare_09"
    t.string   "am_spare_10"
    t.string   "am_spare_11"
    t.string   "am_spare_12"
    t.string   "am_spare_13"
    t.string   "am_spare_14"
    t.string   "am_spare_15"
    t.string   "am_spare_16"
    t.string   "am_spare_17"
    t.string   "am_spare_18"
    t.string   "am_spare_19"
    t.string   "am_spare_20"
    t.text     "am_spare_21"
    t.text     "am_spare_22"
    t.text     "am_spare_23"
    t.text     "am_spare_24"
    t.text     "am_spare_25"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "user_id"
    t.integer  "impressions_count"
    t.integer  "acategory_id"
  end

  create_table "ecategories", force: :cascade do |t|
    t.string   "name"
    t.integer  "ecategory_id"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "eb_title"
    t.text     "eb_intro"
    t.text     "eb_ckeditor"
    t.string   "eb_link"
    t.string   "eb_image"
    t.string   "eb_price_is"
    t.string   "eb_price_was"
    t.string   "eb_price_sale"
    t.string   "eb_youtube_01"
    t.string   "eb_youtube_02"
    t.string   "eb_review"
    t.string   "eb_source"
    t.string   "eb_code"
    t.string   "eb_date"
    t.string   "eb_expire"
    t.string   "eb_shipping"
    t.string   "eb_featured_sale"
    t.string   "eb_spare_01"
    t.string   "eb_spare_02"
    t.string   "eb_spare_03"
    t.string   "eb_spare_04"
    t.string   "eb_spare_05"
    t.string   "eb_spare_06"
    t.string   "eb_spare_07"
    t.string   "eb_spare_08"
    t.string   "eb_spare_09"
    t.string   "eb_spare_10"
    t.string   "eb_spare_11"
    t.string   "eb_spare_12"
    t.string   "eb_spare_13"
    t.string   "eb_spare_14"
    t.string   "eb_spare_15"
    t.string   "eb_spare_16"
    t.string   "eb_spare_17"
    t.string   "eb_spare_18"
    t.string   "eb_spare_19"
    t.string   "eb_spare_20"
    t.text     "eb_spare_21"
    t.text     "eb_spare_22"
    t.text     "eb_spare_23"
    t.text     "eb_spare_24"
    t.text     "eb_spare_25"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "user_id"
    t.integer  "ecategory_id"
    t.integer  "impressions_count"
  end

  create_table "impressions", force: :cascade do |t|
    t.string   "impressionable_type"
    t.integer  "impressionable_id"
    t.integer  "user_id"
    t.string   "controller_name"
    t.string   "action_name"
    t.string   "view_name"
    t.string   "request_hash"
    t.string   "ip_address"
    t.string   "session_hash"
    t.text     "message"
    t.text     "referrer"
    t.text     "params"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "impressions", ["controller_name", "action_name", "ip_address"], name: "controlleraction_ip_index"
  add_index "impressions", ["controller_name", "action_name", "request_hash"], name: "controlleraction_request_index"
  add_index "impressions", ["controller_name", "action_name", "session_hash"], name: "controlleraction_session_index"
  add_index "impressions", ["impressionable_type", "impressionable_id", "ip_address"], name: "poly_ip_index"
  add_index "impressions", ["impressionable_type", "impressionable_id", "params"], name: "poly_params_request_index"
  add_index "impressions", ["impressionable_type", "impressionable_id", "request_hash"], name: "poly_request_index"
  add_index "impressions", ["impressionable_type", "impressionable_id", "session_hash"], name: "poly_session_index"
  add_index "impressions", ["impressionable_type", "message", "impressionable_id"], name: "impressionable_type_message_index"
  add_index "impressions", ["user_id"], name: "index_impressions_on_user_id"

  create_table "posts", force: :cascade do |t|
    t.string   "post_title"
    t.text     "post_intro"
    t.string   "post_link"
    t.string   "post_image"
    t.string   "post_price_is"
    t.string   "post_price_was"
    t.string   "post_price_sale"
    t.string   "post_youtube_01"
    t.string   "post_youtube_02"
    t.string   "post_review"
    t.string   "post_source"
    t.string   "post_spare_01"
    t.string   "post_spare_02"
    t.string   "post_spare_03"
    t.string   "post_spare_04"
    t.string   "post_spare_05"
    t.string   "post_spare_06"
    t.string   "post_spare_07"
    t.string   "post_spare_08"
    t.string   "post_spare_09"
    t.string   "post_spare_10"
    t.string   "post_spare_11"
    t.string   "post_spare_12"
    t.string   "post_spare_13"
    t.string   "post_spare_14"
    t.string   "post_spare_15"
    t.string   "post_spare_16"
    t.string   "post_spare_17"
    t.string   "post_spare_18"
    t.string   "post_spare_19"
    t.string   "post_spare_20"
    t.text     "post_spare_21"
    t.text     "post_spare_22"
    t.text     "post_spare_23"
    t.text     "post_spare_24"
    t.text     "post_spare_25"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "user_id"
    t.integer  "category_id"
    t.integer  "impressions_count"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], name: "index_roles_on_name"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"

  create_table "votes", force: :cascade do |t|
    t.integer  "votable_id"
    t.string   "votable_type"
    t.integer  "voter_id"
    t.string   "voter_type"
    t.boolean  "vote_flag"
    t.string   "vote_scope"
    t.integer  "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope"
  add_index "votes", ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope"

end
