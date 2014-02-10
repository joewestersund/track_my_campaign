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

ActiveRecord::Schema.define(version: 20140210015151) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: true do |t|
    t.integer  "database_instance_id"
    t.string   "name"
    t.string   "county"
    t.string   "state"
    t.integer  "jurisdiction_type_id"
    t.integer  "league_division_id"
    t.integer  "population"
    t.boolean  "kp_service_area"
    t.boolean  "under_resourced_or_disease_burden"
    t.decimal  "state_median_income"
    t.decimal  "city_median_income"
    t.integer  "HEAL_city_designation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "communication_types", force: true do |t|
    t.integer  "database_instance_id"
    t.string   "name"
    t.integer  "order_in_list"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "communications", force: true do |t|
    t.integer  "database_instance_id"
    t.date     "date"
    t.integer  "duration_minutes"
    t.integer  "communication_type_id"
    t.string   "event_name"
    t.integer  "interest_level_id"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contact_interest_levels", force: true do |t|
    t.integer  "database_instance_id"
    t.string   "name"
    t.integer  "order_in_list"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", force: true do |t|
    t.integer  "database_instance_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "title"
    t.integer  "city_id"
    t.string   "organization_name"
    t.string   "phone_number"
    t.string   "email"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "address_city"
    t.string   "address_state"
    t.string   "address_zip"
    t.integer  "interest_level_id"
    t.boolean  "HEAL_champion"
    t.text     "HEAL_champion_notes"
    t.integer  "position_type_id"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "honorific_id"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "database_instances", force: true do |t|
    t.integer  "organization_id"
    t.integer  "database_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "database_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "internal_name"
  end

  create_table "heal_city_designations", force: true do |t|
    t.integer  "database_instance_id"
    t.string   "name"
    t.integer  "order_in_list"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "honorifics", force: true do |t|
    t.integer  "database_instance_id"
    t.string   "name"
    t.integer  "order_in_list"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "interest_levels", force: true do |t|
    t.integer  "database_instance_id"
    t.string   "name"
    t.integer  "order_in_list"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jurisdiction_types", force: true do |t|
    t.integer  "database_instance_id"
    t.string   "name"
    t.integer  "order_in_list"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "organizations", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "position_types", force: true do |t|
    t.integer  "database_instance_id"
    t.string   "name"
    t.integer  "order_in_list"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "topics", force: true do |t|
    t.integer  "database_instance_id"
    t.string   "name"
    t.integer  "order_in_list"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
    t.string   "password_digest"
    t.boolean  "admin"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "organization_id"
  end

end
