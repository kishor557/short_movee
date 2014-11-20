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

ActiveRecord::Schema.define(version: 20141108040900) do

  create_table "movies", force: true do |t|
    t.string   "url"
    t.boolean  "available"
    t.string   "video_id"
    t.string   "provider"
    t.string   "title"
    t.text     "description"
    t.integer  "duration"
    t.datetime "date"
    t.string   "thumbnail_small"
    t.string   "thumbnail_medium"
    t.string   "thumbnail_large"
    t.string   "embed_url"
    t.text     "embed_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "queries", force: true do |t|
    t.string   "email"
    t.string   "subject"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
