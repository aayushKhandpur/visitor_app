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

ActiveRecord::Schema.define(version: 20160605123615) do

  create_table "visitors", force: :cascade do |t|
    t.string   "first_name",         limit: 255, null: false
    t.string   "last_name",          limit: 255, null: false
    t.string   "email_id",           limit: 255, null: false
    t.string   "phone_no",           limit: 255, null: false
    t.string   "city",               limit: 255, null: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "gender",             limit: 255
    t.string   "address",            limit: 255
    t.string   "state",              limit: 255
    t.string   "pincode",            limit: 255
    t.string   "otherEdu",           limit: 255
    t.string   "eduInstitute",       limit: 255
    t.string   "studentOccupation",  limit: 255
    t.string   "highestEducation",   limit: 255, null: false
    t.string   "computerKnowledge",  limit: 255
    t.string   "guardianName",       limit: 255, null: false
    t.string   "guardianEmail",      limit: 255, null: false
    t.string   "guardianPhone",      limit: 255, null: false
    t.string   "guardianOccupation", limit: 255
    t.boolean  "arenaNewspaper",     limit: 1
    t.boolean  "arenaTV",            limit: 1
    t.boolean  "arenaInternet",      limit: 1
    t.boolean  "arenaStudent",       limit: 1
    t.boolean  "arenaBanner",        limit: 1
    t.boolean  "arenaFriends",       limit: 1
    t.date     "dob"
  end

  add_index "visitors", ["email_id"], name: "index_visitors_on_email_id", using: :btree
  add_index "visitors", ["phone_no"], name: "index_visitors_on_phone_no", using: :btree

end
