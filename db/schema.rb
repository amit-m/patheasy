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

ActiveRecord::Schema.define(:version => 20150128192139) do

  create_table "admins", :force => true do |t|
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,     :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "user_id"
    t.boolean  "is_superadmin",          :default => false
    t.boolean  "is_block",               :default => false
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.string   "name"
    t.string   "designation"
    t.string   "phone"
    t.text     "residential_address"
    t.string   "emp_id"
    t.datetime "doj"
  end

  add_index "admins", ["email"], :name => "index_admins_on_email"
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true
  add_index "admins", ["user_id"], :name => "index_admins_on_user_id", :unique => true

  create_table "book_my_tests", :force => true do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "gender"
    t.text     "address"
    t.string   "mobile"
    t.string   "alt_mobile_no"
    t.string   "ref_doc_name"
    t.string   "home_collection"
    t.text     "coll_add"
    t.datetime "date_sample_coll"
    t.integer  "test_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "doctors", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "doctors", ["email"], :name => "index_doctors_on_email", :unique => true
  add_index "doctors", ["reset_password_token"], :name => "index_doctors_on_reset_password_token", :unique => true

  create_table "medical_tests", :force => true do |t|
    t.integer  "category_id"
    t.string   "name"
    t.integer  "duration_of_rpt"
    t.text     "clinical_restrictn"
    t.float    "cost_of_text"
    t.text     "specimen_required"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "medical_tests", ["category_id"], :name => "index_medical_tests_on_category_id"

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
