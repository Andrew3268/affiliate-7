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

ActiveRecord::Schema.define(version: 20180930123453) do

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
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
