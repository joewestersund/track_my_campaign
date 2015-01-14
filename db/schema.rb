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

ActiveRecord::Schema.define(version: 20150114051158) do

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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "policy_change_in_progress",                                    default: false
    t.decimal  "percent_obesity",                      precision: 5, scale: 2
    t.boolean  "minorities_more_than_fifteen_percent"
    t.decimal  "percent_white_alone",                  precision: 5, scale: 2
    t.decimal  "percent_not_white_alone",              precision: 5, scale: 2
    t.decimal  "percent_african_american_alone",       precision: 5, scale: 2
    t.decimal  "percent_native_american_alone",        precision: 5, scale: 2
    t.decimal  "percent_asian_alone",                  precision: 5, scale: 2
    t.decimal  "percent_pacific_islander_alone",       precision: 5, scale: 2
    t.decimal  "percent_other_race_alone",             precision: 5, scale: 2
    t.decimal  "percent_two_or_more_races",            precision: 5, scale: 2
  end

  create_table "cities_communications", id: false, force: true do |t|
    t.integer "city_id"
    t.integer "communication_id"
  end

  create_table "cities_contacts", id: false, force: true do |t|
    t.integer "city_id"
    t.integer "contact_id"
  end

  create_table "cities_followup_tasks", id: false, force: true do |t|
    t.integer "city_id"
    t.integer "followup_task_id"
  end

  create_table "city_designation_achievements", force: true do |t|
    t.integer  "database_instance_id"
    t.date     "date"
    t.integer  "city_id"
    t.integer  "city_designation_id"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "city_designations", force: true do |t|
    t.integer  "database_instance_id"
    t.string   "name"
    t.integer  "order_in_list"
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
    t.string   "others_involved"
  end

  create_table "communications_contacts", id: false, force: true do |t|
    t.integer "communication_id"
    t.integer "contact_id"
  end

  create_table "communications_staff_involved", id: false, force: true do |t|
    t.integer "communication_id"
    t.integer "user_id"
  end

  create_table "communications_topics", id: false, force: true do |t|
    t.integer "communication_id"
    t.integer "topic_id"
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
    t.string   "organization_name"
    t.string   "office_phone_number"
    t.string   "email"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "address_city"
    t.string   "address_state"
    t.string   "address_zip"
    t.integer  "interest_level_id"
    t.boolean  "heal_champion"
    t.text     "heal_champion_notes"
    t.integer  "position_type_id"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "honorific_id"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "cell_phone_number"
    t.string   "fax"
    t.integer  "organization_type_id"
    t.string   "website"
    t.boolean  "active",               default: true
  end

  create_table "contacts_followup_tasks", id: false, force: true do |t|
    t.integer "contact_id"
    t.integer "followup_task_id"
  end

  create_table "database_instances", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type"
    t.string   "instance_name"
  end

  create_table "followup_tasks", force: true do |t|
    t.integer  "database_instance_id"
    t.date     "due_date"
    t.text     "description"
    t.integer  "assigned_to_id"
    t.integer  "assigned_by_id"
    t.integer  "prior_communication_id"
    t.boolean  "completed"
    t.date     "completed_date"
    t.integer  "completed_by_id"
    t.text     "completion_notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "heal_city_designations", force: true do |t|
    t.integer  "database_instance_id"
    t.string   "name"
    t.integer  "order_in_list"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "heal_policies", force: true do |t|
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

  create_table "league_divisions", force: true do |t|
    t.integer  "database_instance_id"
    t.string   "name"
    t.integer  "order_in_list"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "milestone_types", force: true do |t|
    t.integer  "database_instance_id"
    t.string   "name"
    t.integer  "order_in_list"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "milestones", force: true do |t|
    t.integer  "database_instance_id"
    t.integer  "milestone_type_id"
    t.integer  "city_id"
    t.integer  "status_type_id"
    t.date     "completion_date"
    t.text     "notes"
    t.integer  "assigned_to_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "organization_types", force: true do |t|
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

  create_table "policies", force: true do |t|
    t.integer  "database_instance_id"
    t.string   "name"
    t.integer  "order_in_list"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "category"
    t.string   "subcategory"
  end

  create_table "policies_policy_adoptions", id: false, force: true do |t|
    t.integer "policy_id"
    t.integer "policy_adoption_id"
  end

  create_table "policies_resolutions", id: false, force: true do |t|
    t.integer "policy_id"
    t.integer "resolution_id"
  end

  create_table "policy_adoptions", force: true do |t|
    t.integer  "database_instance_id"
    t.date     "date"
    t.integer  "city_id"
    t.boolean  "prior_to_joining_campaign"
    t.text     "notes"
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

  create_table "resolutions", force: true do |t|
    t.integer  "database_instance_id"
    t.date     "date"
    t.integer  "city_id"
    t.boolean  "prior_to_joining_campaign"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "status_types", force: true do |t|
    t.integer  "database_instance_id"
    t.string   "name"
    t.integer  "order_in_list"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "survey_emails", force: true do |t|
    t.integer  "database_instance_id"
    t.integer  "contact_id"
    t.string   "email_address"
    t.date     "sent_date"
    t.string   "subject"
    t.text     "message"
    t.integer  "survey_monkey_respondent_id"
    t.boolean  "response_received"
    t.date     "reminder_sent_date"
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

  create_table "user_permissions", force: true do |t|
    t.integer  "database_instance_id"
    t.integer  "user_id"
    t.boolean  "read_only"
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
  end

end
