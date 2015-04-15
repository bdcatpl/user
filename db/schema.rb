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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20150307095832) do

  create_table "create_owners", :force => true do |t|
    t.string   "name"
    t.integer  "floor"
    t.string   "block"
    t.integer  "flat_number"
    t.string   "business_name"
    t.string   "username"
    t.string   "password_hash"
    t.string   "password_salt"
    t.string   "image"
    t.integer  "carpet_area"
    t.integer  "builtup_area"
    t.string   "mezzanine"
    t.string   "water_connection"
    t.string   "electricity"
    t.string   "ownership"
    t.string   "month_from"
    t.string   "month_to"
    t.integer  "per_month_rent"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "messages", :force => true do |t|
    t.string   "title"
    t.string   "start_date"
    t.string   "start_time"
    t.string   "end_time"
    t.string   "minute_taker"
    t.string   "attendee"
    t.string   "mob_nos"
    t.string   "about_meeting"
    t.string   "type_o"
    t.string   "owner"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "owners", :force => true do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
