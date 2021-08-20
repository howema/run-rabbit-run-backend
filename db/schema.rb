# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_08_20_184452) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buckets", force: :cascade do |t|
    t.string "title"
    t.string "subtasks"
    t.string "notes"
    t.string "image"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "experience_tags", force: :cascade do |t|
    t.integer "experience_id"
    t.integer "tag_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "experiences", force: :cascade do |t|
    t.string "title"
    t.string "subtasks"
    t.string "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.string "image"
    t.boolean "complete"
    t.string "task1"
    t.string "task2"
    t.string "task3"
    t.string "timeline"
    t.integer "budget"
    t.string "travel_type"
    t.string "task1a"
    t.string "task1b"
    t.string "task1c"
    t.string "task2a"
    t.string "task2b"
    t.string "task2c"
    t.string "task3a"
    t.string "task3b"
    t.string "task3c"
  end

  create_table "tags", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
  end

  create_table "user_experiences", force: :cascade do |t|
    t.integer "user_id"
    t.integer "experience_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "favorite_thing"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
