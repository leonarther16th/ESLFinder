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

ActiveRecord::Schema.define(version: 20141127205508) do

  create_table "agencies", force: true do |t|
    t.string   "name"
    t.text     "address"
    t.integer  "country_id"
    t.string   "city"
    t.string   "website"
    t.string   "email"
    t.string   "ref_num"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "app_settings", force: true do |t|
    t.string   "name"
    t.text     "options"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "auto_offers", force: true do |t|
    t.float    "weekly_price"
    t.integer  "min_num_weeks"
    t.integer  "max_num_weeks"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "num_of_seats"
    t.integer  "weekly_limit"
    t.string   "flag"
    t.integer  "pay_within"
    t.integer  "course_id"
    t.float    "regular_price"
    t.string   "regions"
    t.string   "schools"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "average_caches", force: true do |t|
    t.integer  "rater_id"
    t.integer  "rateable_id"
    t.string   "rateable_type"
    t.float    "avg",           null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cities", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", force: true do |t|
    t.string   "name"
    t.integer  "region_id"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", force: true do |t|
    t.string   "name"
    t.float    "course_price"
    t.integer  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "course_type"
  end

  create_table "offers", force: true do |t|
    t.integer  "school_id"
    t.float    "weekly_price"
    t.integer  "min_num_weeks"
    t.integer  "max_num_weeks"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "num_of_seats"
    t.integer  "weekly_limit"
    t.string   "flag"
    t.string   "regions"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "pay_within"
    t.integer  "course_id"
    t.float    "regular_price"
    t.string   "schools"
  end

  create_table "orders", force: true do |t|
    t.integer  "user_id"
    t.integer  "offer_id"
    t.string   "state"
    t.integer  "num_weeks"
    t.float    "total_price"
    t.string   "offer_code"
    t.date     "start_date"
    t.date     "expire_date"
    t.integer  "num_seats"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "overall_averages", force: true do |t|
    t.integer  "rateable_id"
    t.string   "rateable_type"
    t.float    "overall_avg",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rates", force: true do |t|
    t.integer  "rater_id"
    t.integer  "rateable_id"
    t.string   "rateable_type"
    t.float    "stars",         null: false
    t.string   "dimension"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rates", ["rateable_id", "rateable_type"], name: "index_rates_on_rateable_id_and_rateable_type"
  add_index "rates", ["rater_id"], name: "index_rates_on_rater_id"

  create_table "rating_caches", force: true do |t|
    t.integer  "cacheable_id"
    t.string   "cacheable_type"
    t.float    "avg",            null: false
    t.integer  "qty",            null: false
    t.string   "dimension"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rating_caches", ["cacheable_id", "cacheable_type"], name: "index_rating_caches_on_cacheable_id_and_cacheable_type"

  create_table "regions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reservations", force: true do |t|
    t.integer  "user_id"
    t.integer  "order_id"
    t.string   "card_type"
    t.string   "card_name"
    t.string   "card_number"
    t.string   "expiry_month"
    t.string   "expiry_year"
    t.string   "cvc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schools", force: true do |t|
    t.string   "name"
    t.integer  "city_id"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.text     "about"
    t.text     "avatar"
    t.string   "reg_link"
  end

  create_table "searches", force: true do |t|
    t.integer  "city_id"
    t.integer  "num_weeks"
    t.integer  "num_seats"
    t.date     "start_date"
    t.text     "student_name"
    t.integer  "course_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "country_id"
  end

  create_table "seats", force: true do |t|
    t.integer  "city_id"
    t.integer  "num_seats"
    t.integer  "num_weeks"
    t.float    "week_price"
    t.float    "student_week_price"
    t.date     "available_from_date"
    t.date     "available_to_date"
    t.string   "created_by"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "note"
    t.integer  "course_id"
    t.string   "code"
  end

  create_table "students", force: true do |t|
    t.integer  "order_id"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_settings", force: true do |t|
    t.integer  "user_id"
    t.text     "setting"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_states", force: true do |t|
    t.integer  "user_id"
    t.string   "user_state"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "agency_id"
    t.string   "agency_name"
    t.string   "state"
    t.string   "company_name"
    t.string   "account_type"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
