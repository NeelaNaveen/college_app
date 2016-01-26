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

ActiveRecord::Schema.define(version: 20160122202734) do

  create_table "class_rooms", force: true do |t|
    t.integer  "number"
    t.string   "building"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", force: true do |t|
    t.string   "number"
    t.string   "description"
    t.integer  "professor_id"
    t.integer  "class_room_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "courses", ["class_room_id"], name: "index_courses_on_class_room_id"
  add_index "courses", ["professor_id"], name: "index_courses_on_professor_id"

  create_table "departments", force: true do |t|
    t.string   "name"
    t.string   "office"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "professors", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "phone"
    t.integer  "department_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "professors", ["department_id"], name: "index_professors_on_department_id"

  create_table "registration_rooms", force: true do |t|
    t.integer  "students_id"
    t.integer  "courses_id"
    t.integer  "semester"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "registration_rooms", ["courses_id"], name: "index_registration_rooms_on_courses_id"
  add_index "registration_rooms", ["students_id"], name: "index_registration_rooms_on_students_id"

  create_table "registrations", force: true do |t|
    t.integer  "students_id"
    t.integer  "courses_id"
    t.integer  "semester"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "registrations", ["courses_id"], name: "index_registrations_on_courses_id"
  add_index "registrations", ["students_id"], name: "index_registrations_on_students_id"

  create_table "students", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "age"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
