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

ActiveRecord::Schema.define(version: 20150226070808) do

  create_table "masters_departments", force: true do |t|
    t.string "code", limit: 50,  null: false
    t.string "name", limit: 100, null: false
  end

  add_index "masters_departments", ["name"], name: "dept_name", using: :btree

  create_table "masters_employee_family", primary_key: "family_id", force: true do |t|
    t.integer "employee_fid",                   null: false
    t.string  "family_state",        limit: 25, null: false
    t.string  "family_status",       limit: 25, null: false
    t.integer "family_no"
    t.string  "family_name",         limit: 50, null: false
    t.boolean "family_gender",                  null: false
    t.date    "family_birthdate",               null: false
    t.integer "family_age",          limit: 1,  null: false
    t.integer "family_address"
    t.integer "country_fid"
    t.integer "state_fid"
    t.integer "city_fid"
    t.integer "district_fid"
    t.string  "poscode",             limit: 5
    t.string  "family_mobile",       limit: 20
    t.string  "family_phone",        limit: 20
    t.string  "family_education",    limit: 50, null: false
    t.string  "family_job",          limit: 50
    t.string  "family_job_position", limit: 50
  end

  create_table "masters_employee_history_educations", primary_key: "education_id", force: true do |t|
    t.integer "employee_fid",                           null: false
    t.string  "education_level",            limit: 25,  null: false
    t.string  "education_school",           limit: 100, null: false
    t.string  "education_department",       limit: 50,  null: false
    t.string  "education_major",            limit: 50,  null: false
    t.integer "education_certificate_year", limit: 1,   null: false
    t.text    "education_notes"
    t.string  "education_address_street1",  limit: 100, null: false
    t.string  "education_address_street2",  limit: 100
    t.integer "education_address_city",                 null: false
    t.integer "education_address_state",                null: false
    t.integer "education_address_country",              null: false
    t.string  "education_address_poscode",  limit: 5,   null: false
  end

  create_table "masters_employee_history_employments", force: true do |t|
    t.integer "employee_fid", null: false
  end

  create_table "masters_employee_history_rewards", force: true do |t|
    t.integer "employee_fid", null: false
  end

  create_table "masters_employee_languages", primary_key: "employee_lang_id", force: true do |t|
    t.integer "employee_fid",                     null: false
    t.integer "language_fid",                     null: false
    t.string  "employee_lang_ability", limit: 25, null: false
  end

  create_table "masters_employees", force: true do |t|
    t.string  "code",            limit: 15,                                         null: false
    t.string  "email"
    t.string  "title",           limit: 10,                                         null: false
    t.string  "firstname",       limit: 50,                                         null: false
    t.string  "lastname",        limit: 50,                                         null: false
    t.string  "nickname",        limit: 50,                                         null: false
    t.string  "birthplace",      limit: 50,                                         null: false
    t.date    "birthdate",                                                          null: false
    t.boolean "gender",                                                             null: false
    t.integer "religion_id",                                                        null: false
    t.integer "ethnic",                                                             null: false
    t.integer "country_id",                                                         null: false
    t.integer "state_id",                                                           null: false
    t.integer "city_id",                                                            null: false
    t.integer "district_id",                                                        null: false
    t.string  "poscode",         limit: 5,                                          null: false
    t.integer "married_status",                                                     null: false
    t.date    "married_date"
    t.integer "child_amount",    limit: 1
    t.decimal "weight",                      precision: 5, scale: 2
    t.decimal "height",                      precision: 5, scale: 2
    t.string  "identity_type",   limit: 20,                                         null: false
    t.string  "identity_number", limit: 100,                                        null: false
    t.date    "joindate",                                                           null: false
    t.integer "state",           limit: 1,                           default: 1,    null: false
    t.boolean "status",                                              default: true, null: false
  end

  add_index "masters_employees", ["code"], name: "employee_code", unique: true, using: :btree

  create_table "masters_positions", force: true do |t|
    t.string "short", limit: 15, null: false
    t.string "name",             null: false
  end

  add_index "masters_positions", ["short"], name: "position_short", unique: true, using: :btree

  create_table "payroll_cities", force: true do |t|
    t.string "short", limit: 25,  null: false
    t.string "name",  limit: 100, null: false
  end

  create_table "reference_geo_cities", force: true do |t|
    t.integer "state_id",                            null: false
    t.string  "short"
    t.string  "name",                                null: false
    t.float   "sort_order", limit: 24, default: 0.0, null: false
  end

  create_table "reference_geo_counties", force: true do |t|
    t.string "short",                               null: false
    t.string "name",                                null: false
    t.float  "sort_order", limit: 24, default: 0.0, null: false
  end

  create_table "reference_geo_districts", force: true do |t|
    t.integer "city_id",                             null: false
    t.string  "short"
    t.string  "name",                                null: false
    t.float   "sort_order", limit: 24, default: 0.0, null: false
  end

  create_table "reference_geo_states", force: true do |t|
    t.integer "country_id",                          null: false
    t.string  "short",                               null: false
    t.string  "name",                                null: false
    t.float   "sort_order", limit: 24, default: 0.0, null: false
  end

  create_table "reference_languages", force: true do |t|
    t.string "short", limit: 5,  null: false
    t.string "name",  limit: 50, null: false
  end

  add_index "reference_languages", ["short"], name: "short", unique: true, using: :btree

  create_table "reference_religions", force: true do |t|
    t.string "name", limit: 100, null: false
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
    t.integer  "role",                   default: 0
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
