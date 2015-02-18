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

ActiveRecord::Schema.define(version: 20150218044337) do

  create_table "albums", force: true do |t|
    t.string   "title"
    t.decimal  "price"
    t.string   "production_label"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "singer_id"
  end

  add_index "albums", ["singer_id"], name: "index_albums_on_singer_id"

  create_table "singers", force: true do |t|
    t.string   "name"
    t.string   "gender"
    t.string   "twitter"
    t.string   "singer_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "songs", force: true do |t|
    t.string   "title"
    t.decimal  "duration"
    t.string   "music_and_lyrics_by"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "album_id"
  end

  add_index "songs", ["album_id"], name: "index_songs_on_album_id"

end
