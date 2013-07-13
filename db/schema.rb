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

ActiveRecord::Schema.define(:version => 20130713123851) do

  create_table "announcements", :force => true do |t|
    t.string   "announcement_text"
    t.string   "announcement_image"
    t.integer  "user_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "classrooms", :force => true do |t|
    t.string   "name"
    t.integer  "seating_capacity"
    t.string   "classroom_image"
    t.integer  "site_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "course_categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "courses", :force => true do |t|
    t.string   "name"
    t.string   "course_image"
    t.decimal  "advertised_fee"
    t.text     "description"
    t.integer  "course_category_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "enrolled_user_comments", :force => true do |t|
    t.string   "comment_text"
    t.string   "comment_image"
    t.integer  "enrollment_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "enrollments", :force => true do |t|
    t.string   "involvement"
    t.decimal  "fee"
    t.string   "grade"
    t.integer  "user_id"
    t.integer  "course_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "lessons", :force => true do |t|
    t.date     "lesson_date"
    t.string   "time_slot"
    t.integer  "course_id"
    t.integer  "classroom_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "sites", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "telephone"
    t.string   "site_image"
    t.text     "directions"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "user_access"
    t.string   "address"
    t.string   "telephone"
    t.date     "birth_date"
    t.text     "profile"
    t.string   "user_image"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
