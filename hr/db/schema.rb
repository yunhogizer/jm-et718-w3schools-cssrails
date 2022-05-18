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

ActiveRecord::Schema.define(version: 20220518143140) do

  create_table "educations", force: :cascade do |t|
    t.string   "school"
    t.string   "startdate"
    t.string   "enddate"
    t.text     "description"
    t.integer  "resume_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["resume_id"], name: "index_educations_on_resume_id"
  end

  create_table "languages", force: :cascade do |t|
    t.string   "name"
    t.string   "level"
    t.integer  "resume_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resume_id"], name: "index_languages_on_resume_id"
  end

  create_table "resumes", force: :cascade do |t|
    t.string   "name"
    t.string   "image_url"
    t.string   "role"
    t.string   "location"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string   "title"
    t.string   "level"
    t.integer  "resume_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resume_id"], name: "index_skills_on_resume_id"
  end

  create_table "work_experiences", force: :cascade do |t|
    t.string   "experience"
    t.string   "startdate"
    t.text     "description"
    t.integer  "resume_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "source"
    t.string   "enddate"
    t.index ["resume_id"], name: "index_work_experiences_on_resume_id"
  end

end
