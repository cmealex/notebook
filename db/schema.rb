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

ActiveRecord::Schema.define(version: 20150612091757) do

  create_table "categories", force: true do |t|
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contact_details", force: true do |t|
    t.integer  "userId"
    t.string   "phone1"
    t.string   "phone2"
    t.string   "email1"
    t.string   "email2"
    t.text     "birthPlace"
    t.text     "residence"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "documents", force: true do |t|
    t.integer  "userId"
    t.string   "docPath"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dues", force: true do |t|
    t.integer  "userId"
    t.float    "sum"
    t.datetime "date"
    t.string   "dueType"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invalidities", force: true do |t|
    t.integer  "type"
    t.string   "grade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_categories", force: true do |t|
    t.integer  "userId"
    t.integer  "categoryId"
    t.string   "institutionName"
    t.string   "city"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_invalidities", force: true do |t|
    t.integer  "userId"
    t.integer  "invalidityId"
    t.string   "grade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "firstName"
    t.string   "lastName"
    t.string   "icSerie"
    t.integer  "icNumber"
    t.decimal  "cnp"
    t.string   "sex"
    t.text     "description"
    t.string   "nationality"
    t.string   "maritalStatus"
    t.integer  "children"
    t.integer  "contactId"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
