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

ActiveRecord::Schema.define(:version => 20121106220515) do

  create_table "classrooms", :force => true do |t|
    t.string   "id_hash"
    t.date     "starts"
    t.date     "ends"
    t.date     "online_date", :null => false
    t.integer  "course_id",   :null => false
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "classrooms", ["id_hash"], :name => "index_classrooms_on_id_hash", :unique => true

  create_table "courses", :force => true do |t|
    t.string   "id_hash",    :null => false
    t.string   "title",      :null => false
    t.string   "short_desc"
    t.text     "desc"
    t.string   "color"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "courses", ["id_hash"], :name => "index_courses_on_id_hash", :unique => true

  create_table "enrollments", :force => true do |t|
    t.integer  "classroom_id"
    t.integer  "learner_id",   :null => false
    t.integer  "course_id",    :null => false
    t.string   "status",       :null => false
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "enrollments", ["learner_id", "course_id", "classroom_id"], :name => "index_enrollments_on_learner_id_and_course_id_and_classroom_id", :unique => true

  create_table "pages", :force => true do |t|
    t.string   "id_hash",       :null => false
    t.string   "title",         :null => false
    t.string   "glyph"
    t.string   "desc"
    t.integer  "order"
    t.text     "content"
    t.string   "slug"
    t.integer  "pageable_id"
    t.string   "pageable_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "pages", ["id_hash"], :name => "index_pages_on_id_hash", :unique => true
  add_index "pages", ["slug"], :name => "index_pages_on_slug"

  create_table "resources", :force => true do |t|
    t.integer  "attachable_id"
    t.string   "attachable_type"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "resource_file_name"
    t.string   "resource_content_type"
    t.integer  "resource_file_size"
    t.datetime "resource_updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "type",                                   :null => false
    t.string   "name",                                   :null => false
    t.string   "id_hash",                                :null => false
    t.string   "email",                  :default => "", :null => false
    t.string   "password_digest",        :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "remember_token"
    t.integer  "company_id"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["id_hash"], :name => "index_users_on_id_hash", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
