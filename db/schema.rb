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

ActiveRecord::Schema.define(version: 20161010202709) do

  create_table "reservations", force: :cascade do |t|
    t.string   "prefix_one"
    t.string   "f_name_one"
    t.string   "l_name_one"
    t.string   "prefix_two"
    t.string   "f_name_two"
    t.string   "l_name_two"
    t.string   "full_company_name"
    t.string   "title"
    t.string   "mla_title"
    t.string   "mailing_address"
    t.string   "suite"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "work_phone"
    t.string   "cell_phone"
    t.string   "email_address"
    t.string   "re_enter_email_address"
    t.string   "supplier_guest_speaker"
    t.date     "hotel_arrival"
    t.date     "hotel_departure"
    t.boolean  "room_type"
    t.text     "special_needs"
    t.text     "special_requests"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
